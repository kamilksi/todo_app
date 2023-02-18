import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:todo_app/domain/entity/request/task/task.dart';
import 'package:todo_app/presentation/add_page/cubit/add_page_cubit.dart';
import 'package:todo_app/presentation/add_page/cubit/add_page_state.dart';
import 'package:todo_app/presentation/common_widgets/app_edit_widget.dart';
import 'package:todo_app/presentation/common_widgets/app_elevated_button.dart';
import 'package:todo_app/presentation/common_widgets/app_text_field.dart';

const String save = "Save";

class AddPageBody extends HookWidget {
  const AddPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleTextController =
        useTextEditingController();
    final TextEditingController descriptionTextController =
        useTextEditingController();
    return BlocConsumer<AddPageCubit, AddPageState>(
      listener: _listener,
      builder: (BuildContext context, AddPageState state) => AppEditWidget(
          onPressed: () => context.read<AddPageCubit>().addTask(TaskEntity(
              name: titleTextController.text,
              description: descriptionTextController.text)),
          text: save,
          titleController: titleTextController,
          descriptionController: descriptionTextController),
    );
    // builder: (BuildContext context, AddPageState state) => _buildBody(
    //     context, state, titleTextController, descriptionTextController));
  }
}

void _listener(BuildContext context, state) => state.mapOrNull(
    success: (state) => context.router.pop(),
    error: (state) => print(state.error.toString()));

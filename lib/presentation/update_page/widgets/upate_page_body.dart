import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:todo_app/domain/entity/request/task/task.dart';
import 'package:todo_app/presentation/common_widgets/app_edit_widget.dart';
import 'package:todo_app/presentation/update_page/cubit/update_page_cubit.dart';
import 'package:todo_app/presentation/update_page/cubit/update_page_state.dart';

class UpdatePageBody extends HookWidget {
  final int index;
  const UpdatePageBody({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleTextController =
        useTextEditingController();
    final TextEditingController descriptionTextController =
        useTextEditingController();
    return BlocConsumer<UpdatePageCubit, UpdatePageState>(
      listener: _listener,
      builder: (BuildContext context, UpdatePageState state) => AppEditWidget(
        titleController: titleTextController,
        descriptionController: descriptionTextController,
        text: "Save",
        onPressed: () => context.read<UpdatePageCubit>().updateTask(
            TaskEntity(
                name: titleTextController.text,
                description: descriptionTextController.text),
            index),
      ),
    );
  }
}

void _listener(BuildContext context, state) => state.mapOrNull(
    success: (state) => context.router.pop(),
    error: (state) => print(state.error.toString()));

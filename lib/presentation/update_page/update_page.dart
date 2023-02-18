import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/domain/entity/request/task/task.dart';
import 'package:todo_app/injectable/injectable.dart';
import 'package:todo_app/presentation/common_widgets/app_custom_bar.dart';
import 'package:todo_app/presentation/update_page/cubit/update_page_cubit.dart';
import 'package:todo_app/presentation/update_page/widgets/upate_page_body.dart';

const String title = "Edit Task";

class UpdatePage extends StatelessWidget {
  final int index;
  final TaskEntity taskEntity;
  UpdatePage({Key? key, required this.index, required this.taskEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) => AppCustomBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(title),
        child: BlocProvider(
          create: (_) => getIt<UpdatePageCubit>(),
          child: UpdatePageBody(
            index: index,
            taskEntity: taskEntity,
          ),
        ),
      );
}

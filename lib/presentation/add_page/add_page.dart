import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/injectable/injectable.dart';
import 'package:todo_app/presentation/add_page/cubit/add_page_cubit.dart';
import 'package:todo_app/presentation/add_page/widgets/add_page_body.dart';

const _title = Text("Dodaj zadanie");

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: _title,
          centerTitle: true,
          elevation: 0,
        ),
        body: BlocProvider(
          create: (_) => getIt<AddPageCubit>(),
          child: const AddPageBody(),
        ),
      );
}

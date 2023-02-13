import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/presentation/home_page/widgets/task_tile.dart';
import 'package:todo_app/presentation/utils/router/app_router.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        await context.router.push(AddRoute());
      }),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            TaskTile(),
            TaskTile(),
          ]),
    );
  }
}

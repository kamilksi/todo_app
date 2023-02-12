import 'package:flutter/material.dart';
import 'package:todo_app/presentation/home_page/widgets/task_tile.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            TaskTile(),
            TaskTile(),
          ]),
    );
  }
}

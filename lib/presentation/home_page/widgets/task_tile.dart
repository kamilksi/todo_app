import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.black12),
        child: ListTile(
          title: Text(
            "Title",
            textAlign: TextAlign.start,
          ),
          subtitle: Text(
            "Subtitle",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final String description;
  TaskTile({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.indigo.shade100),
        padding: EdgeInsets.all(5),
        child: ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Divider(color: Colors.black,height: 10, thickness: 1.5),

            ],
          ),
          subtitle: AutoSizeText(
            presetFontSizes: [18,16,14],
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            description,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

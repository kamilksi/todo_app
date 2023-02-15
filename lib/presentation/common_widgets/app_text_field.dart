import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController descriptionController;

  AppTextField({Key? key, required this.titleController, required this.descriptionController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(
              hintText: 'Title',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 150,
            child: TextField(
              controller: descriptionController,
              textAlign: TextAlign.start,
              expands: true,
              minLines: null,
              maxLines: null,
              decoration: const InputDecoration(
                hintText: 'Notes',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

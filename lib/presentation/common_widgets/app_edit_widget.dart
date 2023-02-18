import 'package:flutter/material.dart';
import 'package:todo_app/presentation/add_page/cubit/add_page_state.dart';
import 'package:todo_app/presentation/common_widgets/app_text_field.dart';

import 'app_elevated_button.dart';

class AppEditWidget extends StatelessWidget {
  const AppEditWidget({
    required this.onPressed,
    required this.text,
    this.width,
    required this.titleController,
    required this.descriptionController,
  });

  final VoidCallback? onPressed;
  final String text;
  final double? width;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  @override
  Widget build(BuildContext context) => SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      AppTextField(
                          titleController: titleController,
                          descriptionController: descriptionController),
                      const SizedBox(
                        height: 15,
                      ),
                      AppElevatedButton(
                        onPressed: onPressed,
                        text: text,
                        width: width,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
}

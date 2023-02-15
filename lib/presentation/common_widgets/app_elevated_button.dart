import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    required this.onPressed,
    required this.text,
    this.width,
  });

  static const circularProgressIndicatorKey = Key('CommonButtonKey');
  final VoidCallback? onPressed;
  final String text;
  final double? width;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 56,
        width: width ?? double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          onPressed: onPressed,
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      );
}

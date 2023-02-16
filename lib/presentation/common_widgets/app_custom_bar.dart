import 'package:flutter/material.dart';

class AppCustomBar extends StatelessWidget {
  const AppCustomBar({
    required this.child,
    this.actions,
    this.title,
    this.backgroundColor,
    this.floatingActionButton
  });

  final Widget child;
  final List<Widget>? actions;
  final Widget? title;
  final Color? backgroundColor;
  final Widget? floatingActionButton;


  @override
  Widget build(BuildContext context) =>
      Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            title: title,
            backgroundColor: backgroundColor,
            actions: actions ?? [],
          ),
        body: SafeArea(minimum: EdgeInsets.only(bottom: 16), child: child,),
        floatingActionButton: floatingActionButton,
      );
}
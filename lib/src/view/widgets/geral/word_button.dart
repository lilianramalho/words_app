import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.title, required this.action});

  final String title;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        action();
      },
      child: Text(title),
    );
  }
}

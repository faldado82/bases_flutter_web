import 'package:flutter/material.dart';

class CustomFlatButtom extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;

  const CustomFlatButtom(
      {super.key,
      required this.text,
      this.color = Colors.red,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(foregroundColor: color),
      onPressed: () => onPressed(),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

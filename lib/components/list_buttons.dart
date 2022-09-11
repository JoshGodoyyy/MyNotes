import 'package:flutter/material.dart';

class ListButtons extends StatelessWidget {
  ListButtons({
    Key? key,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  final String title;
  final VoidCallback press;
  bool isActive;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 17,
          color: isActive ? Colors.blue[600] : Colors.black54,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

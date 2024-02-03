import 'package:flutter/material.dart';

class AppLarge extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  AppLarge({this.size = 30, this.color = Colors.black, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

import 'package:flutter/material.dart';

class CommonTextLabel extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;

  // Constructor to allow customization of text, fontSize, and fontWeight
  const CommonTextLabel({
    super.key,
    required this.text,
    this.fontSize = 24.0, // Default font size (can be adjusted)
    this.fontWeight = FontWeight.bold, // Default font weight
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

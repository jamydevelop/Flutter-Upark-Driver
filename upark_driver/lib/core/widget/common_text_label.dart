import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';

class CommonTextLabel extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final String? fontFamily;
  final TextAlign? textAlign;

  // Constructor to allow customization of text, fontSize, and fontWeight
  const CommonTextLabel(
      {super.key,
      required this.text,
      this.fontSize = fontSizeTitle4, // Default font size (can be adjusted)
      this.fontWeight = FontWeight.bold, // Default font weight
      this.color,
      this.fontFamily,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: fontFamily,
      ),
    );
  }
}

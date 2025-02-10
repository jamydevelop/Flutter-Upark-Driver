import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class CommonNotifLabel extends StatelessWidget {
  final String text;
  const CommonNotifLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: largeSpacing, vertical: largeSpacing),
      child: CommonTextLabel(
        text: text,
        fontFamily: "Inter",
        fontWeight: FontWeight.w700,
        fontSize: fontSizeTitle4,
        color: notfiLabel,
      ),
    );
  }
}

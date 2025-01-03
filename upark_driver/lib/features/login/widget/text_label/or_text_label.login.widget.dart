import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class OrTextLabelLoginWidget extends StatelessWidget {
  const OrTextLabelLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Center align the children
      children: [
        Expanded(
          child: Divider(
            color: grey,
            height: 1.0,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CommonTextLabel(
            text: "Or",
            fontWeight: FontWeight.normal,
            color: grey,
            fontSize: fontSizeCallout,
          ),
        ),
        Expanded(
          child: Divider(
            color: grey,
            height: 1.0,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}

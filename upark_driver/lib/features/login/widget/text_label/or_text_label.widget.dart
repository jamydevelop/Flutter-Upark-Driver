import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class OrTextLabelWidget extends StatelessWidget {
  const OrTextLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Center align the children
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey,
            height: 1.0,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CommonTextLabel(
            text: "Or",
            fontWeight: FontWeight.normal,
            color: Colors.grey,
            fontSize: fontSizeCallout,
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.grey,
            height: 1.0,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}

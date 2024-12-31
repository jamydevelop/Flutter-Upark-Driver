import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class CreateAccountTextLabelWidget extends StatelessWidget {
  const CreateAccountTextLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommonTextLabel(
          color: darkGreen,
          text: "Create Account",
          fontSize: fontSizeCallout,
        ),
      ],
    );
  }
}

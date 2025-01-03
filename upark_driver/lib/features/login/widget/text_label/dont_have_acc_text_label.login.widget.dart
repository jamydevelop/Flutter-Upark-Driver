import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class DontHaveAccountTextLabelLoginWidget extends StatelessWidget {
  const DontHaveAccountTextLabelLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommonTextLabel(
          color: grey,
          text: "Don't have an account?",
          fontSize: fontSizeTitle4,
        ),
      ],
    );
  }
}

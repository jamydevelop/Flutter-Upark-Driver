import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ForgotPasswordTextLabelLoginWidget extends StatelessWidget {
  const ForgotPasswordTextLabelLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CommonTextLabel(
          color: darkGreen,
          text: "Forgot Password?",
          fontSize: fontSizeTitle4,
        ),
      ],
    );
  }
}

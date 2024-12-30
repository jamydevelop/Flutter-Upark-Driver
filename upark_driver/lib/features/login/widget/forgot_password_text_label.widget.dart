import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ForgotPasswordTextLabelWidget extends StatelessWidget {
  const ForgotPasswordTextLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CommonTextLabel(
          color: Colors.green,
          text: "Forgot Password?",
          fontSize: fontSizeTitle4,
        ),
      ],
    );
  }
}

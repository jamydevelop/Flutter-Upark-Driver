import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ForgotPasswordTextLabelWidget extends StatelessWidget {
  const ForgotPasswordTextLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextLabel(
      fontFamily: "Roboto",
      fontWeight: FontWeight.w500,
      fontSize: fontSizeTitle1, //25px
      color: blackPrimary,
      text: "Forgot\nPassword?",
    );
  }
}

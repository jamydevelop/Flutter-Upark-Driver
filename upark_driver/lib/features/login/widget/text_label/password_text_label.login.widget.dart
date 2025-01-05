import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class LoginPasswordTextLabelWidget extends StatelessWidget {
  const LoginPasswordTextLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextLabel(
      fontFamily: "Inter",
      fontWeight: FontWeight.w500,
      fontSize: fontSizeSubhead, //15px
      color: greyPrimary, //#7D7777
      text: "Password",
    );
  }
}

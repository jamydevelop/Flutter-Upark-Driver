import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class LoginTextLabelLoginWidget extends StatelessWidget {
  const LoginTextLabelLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextLabel(
      fontFamily: "Roboto",
      fontWeight: FontWeight.w600,
      fontSize: fontSizeTitle1, //25px
      text: "Login",
      color: blackPrimary, //#0B0B0B
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class LoginPasswordTextLabelWidget extends StatelessWidget {
  const LoginPasswordTextLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextLabel(
      color: grey,
      text: "Password",
      fontSize: fontSizeTitle4,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class LoginTextLabelLoginWidget extends StatelessWidget {
  const LoginTextLabelLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextLabel(
      text: "Login",
      fontWeight: FontWeight.w600,
      fontSize: 25,
    );
  }
}

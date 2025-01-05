import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';

class LoginTextLabelLoginWidget extends StatelessWidget {
  const LoginTextLabelLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Login",
      style: TextStyle(fontSize: fontSizeTitle1, fontWeight: FontWeight.bold),
    );
  }
}

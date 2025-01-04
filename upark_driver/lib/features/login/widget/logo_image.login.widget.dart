import 'package:flutter/material.dart';

class LogoImageLoginWidget extends StatelessWidget {
  const LogoImageLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/woman.png",
        height: 246, width: 326, fit: BoxFit.fill);
  }
}

import 'package:flutter/material.dart';

class LogoImageLoginWidget extends StatelessWidget {
  const LogoImageLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/images/high_five_image.png",
        height: 246,
        width: 326,
        fit: BoxFit.contain,
      ),
    );
  }
}

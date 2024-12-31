import 'package:flutter/material.dart';

class LogoImageWidget extends StatelessWidget {
  const LogoImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/woman.png",
      height: 246,
      width: 326,
    );
  }
}

import 'package:flutter/material.dart';

class UparkLogoImageWidget extends StatelessWidget {
  const UparkLogoImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/icons/splash_icon.png",
      height: 131,
      width: 99,
    );
  }
}

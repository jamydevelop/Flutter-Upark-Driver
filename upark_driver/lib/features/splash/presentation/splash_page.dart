import 'package:flutter/material.dart';
import 'package:upark_driver/features/splash/widget/upark_logo_image.widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: UparkLogoImageWidget(),
      ),
    );
  }
}

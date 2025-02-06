import 'package:flutter/material.dart';
import 'package:upark_driver/features/splash/widget/logo_splash_icon.splash.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogoSplashIconSplash(),
    );
  }
}

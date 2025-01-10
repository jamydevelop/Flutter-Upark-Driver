import 'package:flutter/material.dart';
import 'package:upark_driver/features/splash/widget/logo_splash_icon.splash.widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogoSplashIconSplashWidget(),
    );
  }
}

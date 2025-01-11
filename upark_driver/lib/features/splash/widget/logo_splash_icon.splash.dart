import 'package:flutter/widgets.dart';

class LogoSplashIconSplash extends StatelessWidget {
  const LogoSplashIconSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/icons/splash_icon.png",
        height: 131,
        width: 99,
      ),
    );
  }
}

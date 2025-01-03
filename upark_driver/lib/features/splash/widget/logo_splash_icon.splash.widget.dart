import 'package:flutter/widgets.dart';

class LogoSplashIconSplashWidget extends StatelessWidget {
  const LogoSplashIconSplashWidget({super.key});

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

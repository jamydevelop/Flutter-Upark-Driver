import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/login/widget/button/fb_button.login.dart';
import 'package:upark_driver/features/login/widget/button/google_button.login.dart';

class FbAndGoogle extends StatelessWidget {
  const FbAndGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GoogleButtonLogin(),
        SizedBox(width: extraLargeSpacing),
        FacebookButtonLogin(),
      ],
    );
  }
}

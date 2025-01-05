import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/login/widget/button/fb_button.login.widget.dart';
import 'package:upark_driver/features/login/widget/button/google_button.login.widget.dart';

class FbAndGoogleWidget extends StatelessWidget {
  const FbAndGoogleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GoogleButtonLoginWidget(),
        SizedBox(width: extraLargeSpacing),
        FacebookButtonLoginWidget(),
      ],
    );
  }
}

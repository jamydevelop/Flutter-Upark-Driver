import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_button.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class LoginButtonLogin extends StatelessWidget {
  const LoginButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: extraLargeSpacing),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CommonButton(
                borderRadius: 10,
                foregroundColor: whitePrimary,
                backgroundColor: greenPrimary,
                child: CommonTextLabel(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w600,
                  fontSize: fontSizeCallout,
                  color: whitePrimary, //
                  text: "Login",
                ),
                onPressed: () {
                  debugPrint("Login Button Pressed!");
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

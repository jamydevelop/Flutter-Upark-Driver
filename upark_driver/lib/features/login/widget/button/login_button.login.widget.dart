import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_button.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class LoginButtonLoginWidget extends StatelessWidget {
  const LoginButtonLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              color: whitePrimary, //#FFFFFF
              text: "Login",
            ),
            onPressed: () {
              debugPrint("Login Button Pressed!");
            },
          ),
        ),
      ],
    );
  }
}

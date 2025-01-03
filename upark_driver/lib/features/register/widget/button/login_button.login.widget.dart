import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_button.dart';

class LoginButtonLoginWidget extends StatelessWidget {
  const LoginButtonLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CommonButton(
            foregroundColor: Colors.white,
            backgroundColor: darkGreen,
            child: Text(
              "Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
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

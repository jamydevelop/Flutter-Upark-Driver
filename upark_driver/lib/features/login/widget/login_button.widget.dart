import 'package:flutter/material.dart';
import 'package:upark_driver/core/widget/common_button.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommonButton(
          width: 326,
          foregroundColor: Colors.white,
          borderColor: Colors.green,
          backgroundColor: Colors.green,
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
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_button.dart';

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: largeSpacing),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CommonButton(
                foregroundColor: Colors.white,
                backgroundColor: darkGreen,
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  debugPrint("Register Button Pressed!");
                },
              ),
            ),
          ],
        ),
        SizedBox(height: largeSpacing),
      ],
    );
  }
}

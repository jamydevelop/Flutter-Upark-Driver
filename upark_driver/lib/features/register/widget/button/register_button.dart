import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_button.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

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
                borderRadius: 10,
                borderWidth: 2,
                foregroundColor: whitePrimary,
                backgroundColor: greenPrimary,
                child: Text(
                  "Register",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600,
                      fontSize: fontSizeTitle6,
                      color: whitePrimary),
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

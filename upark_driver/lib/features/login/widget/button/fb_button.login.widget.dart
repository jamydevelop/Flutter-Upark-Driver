import 'package:flutter/material.dart';
import 'package:upark_driver/core/widget/common_button.dart';

class FacebookButtonLoginWidget extends StatelessWidget {
  const FacebookButtonLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CommonButton(
          hasBorder: true,
          borderColor: Colors.grey,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          onPressed: () {
            debugPrint("Google Button Cliked!");
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Image.asset(
                    "assets/icons/fb_icon.png",
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
              Text(
                "Continue with Facebook",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ))
      ],
    );
  }
}

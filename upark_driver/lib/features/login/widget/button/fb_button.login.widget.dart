import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_button.dart';

class FacebookButtonLoginWidget extends StatelessWidget {
  const FacebookButtonLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonButton(
      borderRadius: 99,
      borderWidth: 2,
      hasBorder: true,
      borderColor: greenPrimary,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      onPressed: () {
        debugPrint("Google Button Cliked!");
      },
      child: Image.asset(
        "assets/icons/fb_icon.png",
        height: largeSpacing, //24px
        width: largeSpacing,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_button.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ExploreButton extends StatelessWidget {
  const ExploreButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CommonButton(
                width: 146,
                height: 50,
                borderRadius: 10,
                foregroundColor: whitePrimary,
                backgroundColor: greenPrimary,
                child: CommonTextLabel(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w600,
                  fontSize: fontSizeCallout,
                  color: whitePrimary, //
                  text: "Explore",
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

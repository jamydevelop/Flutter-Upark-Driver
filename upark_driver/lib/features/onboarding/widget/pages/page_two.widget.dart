import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class PageTwoWidget extends StatelessWidget {
  const PageTwoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(regularSpacing),
        child: Column(
          children: [
            Image.asset("assets/images/page2.png"),
            CommonTextLabel(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
              fontSize: fontSizeTitle1, //25
              color: blackPrimary,
              text: "Choose Your Perfect Spot",
            ),
            SizedBox(
              height: normalSpacing,
            ),
            Align(
              alignment: Alignment.center,
              child: CommonTextLabel(
                textAlign: TextAlign.center,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400,
                fontSize: fontSizeTitle4, //14px
                color: greySecondary, //0xFF868686
                text:
                    "Compare parking options at a glance. View rates, distances, and availability to choose the best spot for your needs.",
              ),
            )
          ],
        ),
      ),
    );
  }
}

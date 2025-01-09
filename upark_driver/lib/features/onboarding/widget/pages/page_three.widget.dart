import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class PageThreeWidget extends StatelessWidget {
  const PageThreeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(regularSpacing),
        child: Column(
          children: [
            Image.asset("assets/images/page3.png"),
            CommonTextLabel(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
              fontSize: fontSizeTitle1, //25
              color: blackPrimary,
              text: "Park with Confidence",
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
                    "Park with confidence. Get real-time updates on space availability and navigate directly to your chosen parking spot.",
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_button.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ApprovedCardWidget extends StatelessWidget {
  const ApprovedCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whitePrimary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 1,
          color: greyPrimary,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: extraNormalSpacing, vertical: largeSpacing),
        child: Column(
          spacing: normalSpacing,
          children: <Widget>[
            Row(
              children: [
                Row(
                  spacing: extraNormalSpacing,
                  children: [
                    Container(
                      width: 133,
                      height: 87,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/images/parking_image.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      spacing: extraSmallSpacing,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonTextLabel(
                          text: "Bormaheco Pay Parking",
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: fontSizeTitle4,
                          color: blackPrimary,
                        ),
                        CommonTextLabel(
                          text: "Parking Slot: CP2",
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: fontSizeTitle3,
                          color: greyQuinary,
                        ),
                        CommonTextLabel(
                          text: "January 31, 2025 from \n 9:00 to  10:00 PM",
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: fontSizeTitle3,
                          color: greyQuinary,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: normalSpacing),
            Row(
              children: [
                Expanded(
                  child: CommonButton(
                    height: 50,
                    borderRadius: 10,
                    foregroundColor: whitePrimary,
                    backgroundColor: greenPrimary,
                    child: CommonTextLabel(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600,
                      fontSize: fontSizeCallout,
                      color: whitePrimary, //
                      text: "Get Direction",
                    ),
                    onPressed: () {
                      debugPrint("Get Direction Pressed!");
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: extraSmallSpacing),
            Row(
              children: [
                Expanded(
                  child: CommonButton(
                    height: 50,
                    borderRadius: 10,
                    foregroundColor: whitePrimary,
                    backgroundColor: redPrimary,
                    child: CommonTextLabel(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600,
                      fontSize: fontSizeCallout,
                      color: whitePrimary, //
                      text: "Cancel Booking",
                    ),
                    onPressed: () {
                      debugPrint("Cancel Booking Pressed!");
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




// PLAIN CONTAINER


// Container(
//       height: 163,
//       decoration: BoxDecoration(
//         color: whitePrimary,
//         borderRadius: BorderRadius.circular(16),
//         border: Border.all(
//           width: 1,
//           color: greyPrimary,
//         ),
//       ),
//     );
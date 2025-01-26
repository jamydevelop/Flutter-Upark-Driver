import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ApprovedCardWidget extends StatelessWidget {
  const ApprovedCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 163,
      decoration: BoxDecoration(
        color: whitePrimary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 1,
          color: greyPrimary,
        ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: extraNormalSpacing, vertical: largeSpacing),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonTextLabel(
                  text: "Apr 23, 2024",
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: fontSizeTitle4,
                  color: greyQuinary,
                ),
                CommonTextLabel(
                  text: "#12321312",
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: fontSizeTitle4,
                  color: greyQuinary,
                )
              ],
            ),
          )
        ],
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
import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class NoReserevedParkingSlotWidget extends StatelessWidget {
  const NoReserevedParkingSlotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 47,
      padding: EdgeInsets.symmetric(
          horizontal: largeSpacing, vertical: normalSpacing),
      decoration: BoxDecoration(
        color: whitePrimary,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: greyTertiary.withValues(
                alpha: 1.0), // Shadow color with opacity
            spreadRadius: 1, // How much the shadow spreads
            blurRadius: 5, // How soft the shadow looks
            offset: Offset(0, 1), // Position of the shadow (x, y)
          ),
        ],
        border: Border.all(
          width: 1,
          color: greyPrimary,
        ),
      ),
      child: Center(
        child: CommonTextLabel(
          text: "No resereved parking slot.",
          fontWeight: FontWeight.w400,
          fontSize: fontSizeTitle4,
          color: blackPrimary,
        ),
      ),
    );
  }
}

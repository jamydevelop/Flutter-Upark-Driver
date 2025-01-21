import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ReserveParkingSpaceWidget extends StatelessWidget {
  const ReserveParkingSpaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whitePrimary,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: greyTertiary.withValues(
                alpha: 0.4), // Shadow color with opacity
            spreadRadius: 1, // How much the shadow spreads
            blurRadius: 2, // How soft the shadow looks
            offset: Offset(1, 1), // Position of the shadow (x, y)
          ),
        ],
        border: Border.all(
          width: 1,
          color: greyPrimary,
        ),
      ),
      height: 110,
      width: double.infinity,
      child: Column(
        children: [
          CommonTextLabel(
            text: "SM City Davao",
            fontWeight: FontWeight.w500,
            fontSize: fontSizeHeadline1,
            color: greenPrimary,
          ),
        ],
      ),
    );
  }
}

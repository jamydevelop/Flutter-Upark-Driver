import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';
import 'package:upark_driver/features/homepage/home/widget/seperator_dash_line.dart';

class ReservedParkingSpaceWidget extends StatelessWidget {
  const ReservedParkingSpaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CommonTextLabel(
            text: "SM City Davao",
            fontWeight: FontWeight.w500,
            fontSize: fontSizeHeadline1,
            color: greenPrimary,
          ),
          CommonTextLabel(
            text: "CP-01",
            fontWeight: FontWeight.w500,
            fontSize: fontSizeTitle4,
            color: blackPrimary,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonTextLabel(
                text: "10:00 AM",
                fontWeight: FontWeight.w500,
                fontSize: fontSizeTitle6,
                color: blackPrimary,
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  color: greenPrimary,
                  shape: BoxShape.circle,
                ),
              ),
              Expanded(child: SeparatorDashLine(color: Colors.grey)),
              Container(
                margin: EdgeInsets.all(8.0),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              CommonTextLabel(
                text: "10:00 AM",
                fontWeight: FontWeight.w500,
                fontSize: fontSizeTitle6,
                color: blackPrimary,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonTextLabel(
                text: "May 17, 2024",
                fontWeight: FontWeight.w500,
                fontSize: fontSizeCaption1,
                color: greySecondary,
              ),
              CommonTextLabel(
                text: "May 17, 2024",
                fontWeight: FontWeight.w500,
                fontSize: fontSizeCaption1,
                color: greySecondary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

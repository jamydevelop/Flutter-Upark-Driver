import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ParkingSpacesAndSeeAll extends StatefulWidget {
  const ParkingSpacesAndSeeAll({super.key});

  @override
  State<ParkingSpacesAndSeeAll> createState() => _ParkingSpacesAndSeeAllState();
}

class _ParkingSpacesAndSeeAllState extends State<ParkingSpacesAndSeeAll> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonTextLabel(
          text: "Parking Spaces",
          fontWeight: FontWeight.w500,
          fontSize: fontSizeTitle6,
          color: blackPrimary,
        ),
        InkWell(
          onTap: () {
            setState(() {
              // Change the color to red when tapped
            });
          },
          child: CommonTextLabel(
            text: "See All",
            fontWeight: FontWeight.w600,
            fontSize: fontSizeTitle4,
            color: greenPrimary,
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class AvailableParkingSpaceWidget extends StatelessWidget {
  const AvailableParkingSpaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 133,
      height: 169,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: whitePrimary,
        border: Border.all(
          color: greyTertiary,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 133,
                height: 87,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                child: Image.asset(
                  "assets/images/parking_image.png",
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 8.0,
                left: 90.0,
                child: Container(
                  alignment: Alignment.center,
                  width: 35,
                  height: extraNormalSpacing,
                  decoration: BoxDecoration(
                    color: whitePrimary,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: CommonTextLabel(
                    text: "200 m",
                    fontWeight: FontWeight.w400,
                    fontSize: 7,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: extraSmallSpacing, top: extraSmallSpacing),
            child: Column(
              spacing: extraSmallSpacing,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonTextLabel(
                    text: "SM City Davao",
                    fontWeight: FontWeight.w500,
                    fontSize: fontSizeTitle6,
                    color: blackPrimary),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/p_icon.png",
                      width: extraNormalSpacing,
                      height: extraNormalSpacing,
                    ),
                    SizedBox(width: extraSmallSpacing),
                    CommonTextLabel(
                        text: "8 Slots Available",
                        fontWeight: FontWeight.w400,
                        fontSize: fontSizeCaption1,
                        color: blackPrimary),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

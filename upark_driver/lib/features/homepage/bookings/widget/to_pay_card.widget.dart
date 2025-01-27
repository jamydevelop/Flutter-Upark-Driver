import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ToPayCardWidget extends StatelessWidget {
  const ToPayCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 163,
      width: double.infinity,
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
          horizontal: extraNormalSpacing,
          vertical: regularSpacing,
        ),
        child: Column(
          spacing: normalSpacing,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            parkingTicketNumberWidget(),
            cardImage(),
          ],
        ),
      ),
    );
  }

  Widget parkingTicketNumberWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonTextLabel(
          text: "Parking Ticket Number:",
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
          fontSize: fontSizeTitle3,
          color: greyQuinary,
        ),
        CommonTextLabel(
          text: "5kj3b452b7235kb3453l",
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
          fontSize: fontSizeTitle3,
          color: greyQuinary,
        ),
      ],
    );
  }

  Widget cardImage() {
    return Container(
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
    );
  }
}

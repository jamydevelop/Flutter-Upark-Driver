import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ParkingSpacesCardWidget extends StatelessWidget {
  const ParkingSpacesCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 121,
      decoration: BoxDecoration(
        color: parkingSpacesCardColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cardImage(),
          ],
        ),
      ),
    );
  }

  Widget cardImage() {
    return Row(
      children: [
        // Image Container
        Container(
          width: 88.77,
          height: 92,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/images/parking_image.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: normalSpacing),

        // Expanded to allow flexible space for text to avoid overflow
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonTextLabel(
                text: "SM City Davao",
                fontFamily: "Roboto",
                fontWeight: FontWeight.w600,
                fontSize: fontSizeTitle8,
                color: blackPrimary,
              ),
              SizedBox(height: extraSmallSpacing),

              // Wrap the Row with Flexible to avoid overflow in narrow space
              Row(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Align start to avoid vertical misalignment
                children: [
                  Image.asset(
                    Assets.parkingSpacesLocation,
                    width: 12,
                    height: 12,
                  ),
                  SizedBox(width: normalSpacing),
                  // Use Flexible to allow text to fit
                  Flexible(
                    child: CommonTextLabel(
                      text:
                          "Ecoland Subdivision Basketball Court, Quimpo Blvd cor. Tulip and...",
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                      fontSize: fontSizeTitle1,
                      color: greyQuinary,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(height: extraSmallSpacing),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.parkingSpacesLocation,
                    width: 12,
                    height: 12,
                  ),
                  SizedBox(width: normalSpacing),
                  CommonTextLabel(
                    text: "Mon - Fri, 8:00 AM - 5:00 PM",
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: fontSizeTitle1,
                    color: greyQuinary,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

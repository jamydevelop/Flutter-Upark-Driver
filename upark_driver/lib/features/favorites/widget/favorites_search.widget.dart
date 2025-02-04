import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';

class FavoritesSearchWidget extends StatelessWidget {
  const FavoritesSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0), // Add border radius here
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2), // Shadow color
            offset: Offset(0, 1), // x=0, y=1
            blurRadius: 7.1, // Blur effect
            spreadRadius: 0, // No spread
          ),
        ],
      ),
      //test
      //another test
      child: CommonTextField(
        hintText: "Search Parking Spaces",
        hintTextStyle: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w400,
          fontSize: fontSizeTitle2,
          color: blackPrimary,
        ),
        prefixIcon: Image.asset(
          Assets.parkingSpacesSearchIcon,
          scale: 2,
        ),
        onFieldSubmitted: (value) {
          // Hide the on-screen keyboard
          FocusScope.of(context).unfocus();
        },
        keyboardType: TextInputType.emailAddress,
        inputBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

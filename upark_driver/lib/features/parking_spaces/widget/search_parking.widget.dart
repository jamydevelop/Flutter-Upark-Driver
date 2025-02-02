import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';

class SearchParkingWidget extends StatelessWidget {
  const SearchParkingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextField(
      hintText: "Email",
      hintTextStyle: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w400,
          fontSize: fontSizeSubhead, //15px
          color: greySecondary), //#868686
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
        borderRadius: BorderRadius.circular(16.0),
        borderSide: BorderSide(color: greySecondary, width: 1),
      ),
    );
  }
}

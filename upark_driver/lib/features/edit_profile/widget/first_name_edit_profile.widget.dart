import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class FirstNameEditProfileWidget extends StatelessWidget {
  const FirstNameEditProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: CommonTextLabel(
            text: "First Name",
            fontWeight: FontWeight.w500,
            fontSize: fontSizeTitle5,
            color: blackPrimary,
          ),
        ),
        SizedBox(height: normalSpacing),
        CommonTextField(
          hintText: "Naruto",
          hintTextStyle: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w400,
              fontSize: fontSizeSubhead, //15px
              color: greySecondary), //#868686
          prefixIcon: Image.asset(
            Assets.editProfileHumanIcon,
            scale: 3,
            color: greySecondary, //#868686
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
        ),
      ],
    );
  }
}

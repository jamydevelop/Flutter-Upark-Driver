import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonTextLabel(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: fontSizeSubhead, //15px
          color: greyPrimary, //#7D7777
          text: "Email",
        ),
        SizedBox(height: regularSpacing),
        CommonTextField(
          hintText: "Email",
          hintTextStyle: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w400,
              fontSize: fontSizeSubhead, //15px
              color: greySecondary), //#868686
          prefixIcon: Image.asset(
            "assets/icons/at_sign_icon.png",
            scale: 3,
            color: greySecondary, //#868686
          ),
          // Icon(
          //   Icons.alternate_email,
          //   color: textFieldTextGrey,
          // ),
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

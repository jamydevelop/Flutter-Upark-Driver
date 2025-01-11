import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/features/register/widget/text_label/contact_number_text_label.register.dart';

class ContactNumberTextfieldRegister extends StatelessWidget {
  const ContactNumberTextfieldRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContactNumberTextLabelRegister(),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          hintText: "Enter your contact number",
          hintTextStyle: TextStyle(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w400,
            fontSize: fontSizeTitle5, //15px
            color: greySecondary, //#868686
          ),
          prefixIcon: Image.asset(
            "assets/icons/call_icon.png",
            scale: 3,
          ),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
          },
          inputBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(color: greySecondary, width: 1)),
        ),
      ],
    );
  }
}

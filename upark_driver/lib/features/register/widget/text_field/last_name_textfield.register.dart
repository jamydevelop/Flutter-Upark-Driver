import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/features/register/widget/text_label/last_name_text_label.register.dart';

class LastNameTextfieldRegister extends StatelessWidget {
  const LastNameTextfieldRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LastNameTextLabelRegister(),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          hintText: "Enter your last name",
          hintTextStyle: TextStyle(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w400,
            fontSize: fontSizeTitle5,
            color: greySecondary, //#868686
          ),
          prefixIcon: Image.asset("assets/icons/profile.png", scale: 3),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
          },
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: greySecondary, width: 1),
          ),
        ),
      ],
    );
  }
}

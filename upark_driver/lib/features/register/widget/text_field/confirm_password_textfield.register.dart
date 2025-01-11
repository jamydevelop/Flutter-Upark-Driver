import 'package:flutter/material.dart';

import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/features/register/widget/text_label/confirm_password_text_label.register.dart';

class ConfirmPasswordTextfieldRegister extends StatelessWidget {
  const ConfirmPasswordTextfieldRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConfirmPasswordTextLabelRegister(),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          hintText: "••••••••••••",
          hintTextStyle: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w400,
            color: greySecondary,
            fontSize: fontSizeTitle5,
          ),
          prefixIcon: Image.asset(
            "assets/icons/key_square_icon.png",
            scale: 3,
          ),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
          },
          inputBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: greySecondary, width: 1)),
        )
      ],
    );
  }
}

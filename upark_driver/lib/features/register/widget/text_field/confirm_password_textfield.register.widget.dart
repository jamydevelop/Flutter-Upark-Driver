import 'package:flutter/material.dart';

import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/features/register/widget/text_label/confirm_password_text_label.register.widget.dart';

class ConfirmPasswordTextfieldRegisterWidget extends StatelessWidget {
  const ConfirmPasswordTextfieldRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConfirmPasswordTextLabelRegisterWidget(),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          hintText: "Re-type your password",
          hintTextStyle: TextStyle(
            color: grey,
            fontSize: 16,
          ),
          prefixIcon: Image.asset(
            "assets/icons/key_square_icon.png",
            scale: 3,
          ),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
          },
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/features/register/widget/text_label/email_text_label.register.dart';

class EmailTextfieldRegister extends StatelessWidget {
  const EmailTextfieldRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmailTextLabelRegister(),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          hintText: "Enter your email",
          hintTextStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto",
            color: greySecondary,
            fontSize: fontSizeTitle5,
          ),
          prefixIcon: Icon(Icons.alternate_email_sharp, color: greySecondary),
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

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/features/login/widget/text_label/email_text_label.login.widget.dart';

class EmailTextfieldLoginWidget extends StatelessWidget {
  const EmailTextfieldLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EmailTextLabelLoginWidget(),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          hintText: "Enter your email",
          hintTextStyle: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w400,
              fontSize: fontSizeSubhead,
              color: textFieldTextGrey),
          prefixIcon: Image.asset("assets/icons/at_sign_icon.png", scale: 3),
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
            borderSide: BorderSide(color: textFieldTextGrey, width: 1),
          ),
        ),
      ],
    );
  }
}

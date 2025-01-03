import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/features/login/widget/text_label/password_text_label.login.widget.dart';

class LoginPasswordTextfieldLoginWidget extends StatelessWidget {
  const LoginPasswordTextfieldLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LoginPasswordTextLabelWidget(),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          isSecure: true,
          hasShowHideTextIcon: true,
          maxLines: 1,
          hintText: "Password",
          hintTextStyle: TextStyle(color: grey),
          prefixIcon: Icon(
            Icons.key_sharp,
            color: grey,
          ),
          onFieldSubmitted: (value) {
            // Hide the on-screen keyboard
            FocusScope.of(context).unfocus();
          },
          fillColor: Colors.white,
          filled: true,
          keyboardType: TextInputType.text,
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: grey),
          ),
        ),
      ],
    );
  }
}

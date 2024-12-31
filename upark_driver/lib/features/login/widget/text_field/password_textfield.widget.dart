import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';

class PasswordTextfieldWidget extends StatelessWidget {
  const PasswordTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextField(
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
    );
  }
}

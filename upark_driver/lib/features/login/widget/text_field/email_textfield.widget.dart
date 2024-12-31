import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';

class EmailTextfieldWidget extends StatelessWidget {
  const EmailTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextField(
      hintText: "Enter your email",
      hintTextStyle: TextStyle(color: grey),
      prefixIcon: Icon(
        Icons.alternate_email,
        color: grey,
      ),
      onFieldSubmitted: (value) {
        // Hide the on-screen keyboard
        FocusScope.of(context).unfocus();
      },
      keyboardType: TextInputType.emailAddress,
      inputBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: grey),
      ),
    );
  }
}

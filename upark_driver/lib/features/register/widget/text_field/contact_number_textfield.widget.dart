import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';

class ContactNumberTextfieldWidget extends StatelessWidget {
  const ContactNumberTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextField(
      hintText: "Enter your contact number",
      hintTextStyle: TextStyle(
        color: grey,
        fontSize: 16,
      ),
      prefixIcon: Image.asset(
        "assets/icons/call_icon.png",
        scale: 3,
      ),
      onFieldSubmitted: (value) {
        FocusScope.of(context).unfocus();
      },
      inputBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}

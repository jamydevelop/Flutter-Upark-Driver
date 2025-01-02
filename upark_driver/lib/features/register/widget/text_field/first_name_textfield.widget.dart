import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';

class FirstNameTextfieldWidget extends StatelessWidget {
  const FirstNameTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextField(
      hintText: "Enter your first name",
      hintTextStyle: TextStyle(color: grey, fontSize: 20),
      prefixIcon: Image.asset(
        "assets/images/profile.png",
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

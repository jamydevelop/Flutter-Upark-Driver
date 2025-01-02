import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';

class LastNameTextfieldWidget extends StatelessWidget {
  const LastNameTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextField(
      hintText: "Last Name",
      hintTextStyle: TextStyle(color: grey, fontSize: 16.0),
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

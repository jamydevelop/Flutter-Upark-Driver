import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/features/register/widget/text_label/register_first_name_text_label.widget.dart';

class RegisterFirstNameTextfieldWidget extends StatelessWidget {
  const RegisterFirstNameTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RegisterFirstNameTextLabelWidget(),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          hintText: "Enter your first name",
          hintTextStyle: TextStyle(
            color: grey,
            fontSize: 16.0,
          ),
          prefixIcon: Image.asset(
            "assets/icons/profile.png",
            scale: 3,
          ),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
          },
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/features/register/widget/text_label/last_name_text_label.register.widget.dart';

class LastNameTextfieldRegisterWidget extends StatelessWidget {
  const LastNameTextfieldRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LastNameTextLabelRegisterWidget(),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          hintText: "Enter your last name",
          hintTextStyle: TextStyle(color: grey, fontSize: 16.0),
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

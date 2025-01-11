import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/features/register/widget/text_label/plate_number_text_label.register.dart';

class PlateNumberTextfieldRegister extends StatelessWidget {
  const PlateNumberTextfieldRegister({super.key, required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlateNumberTextLabelRegister(value: value),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          hintText: "Plate #",
          hintTextStyle: TextStyle(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w400,
            fontSize: fontSizeTitle5, //15px
            color: greySecondary,
          ),
          prefixIcon: Image.asset(
            "assets/icons/license_icon.png",
            scale: 3,
          ),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
          },
          inputBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(width: 1, color: greySecondary)),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/features/register/widget/text_label/plate_number_text_label.register.widget.dart';

class PlateNumberTextfieldRegisterWidget extends StatelessWidget {
  const PlateNumberTextfieldRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlateNumberTextLabelRegisterWidget(),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          hintText: "Plate #",
          hintTextStyle: TextStyle(
            color: grey,
            fontSize: 16,
          ),
          prefixIcon: Image.asset(
            "assets/icons/license_icon.png",
            scale: 3,
          ),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
          },
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        )
      ],
    );
  }
}

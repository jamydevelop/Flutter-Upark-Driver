import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';
import 'package:upark_driver/features/register/widget/text_label/register_gender_text_label.widget.dart';

class RegisterGenderSelectionWidget extends StatefulWidget {
  const RegisterGenderSelectionWidget({super.key});

  @override
  RegisterGenderSelectionWidgetState createState() =>
      RegisterGenderSelectionWidgetState();
}

class RegisterGenderSelectionWidgetState
    extends State<RegisterGenderSelectionWidget> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RegisterGenderTextLabelWidget(),
        SizedBox(height: extraSmallSpacing),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Checkbox(
                  value: isMaleSelected,
                  onChanged: (bool? value) {
                    setState(() {
                      isMaleSelected = value ?? false;
                      if (isMaleSelected) {
                        isFemaleSelected = false; // Uncheck the other box
                      }
                    });
                  },
                ),
                CommonTextLabel(
                  color: grey,
                  text: "Male",
                ),
              ],
            ),
            SizedBox(width: regularSpacing),
            Row(
              children: [
                Checkbox(
                  value: isFemaleSelected,
                  onChanged: (bool? value) {
                    setState(() {
                      isFemaleSelected = value ?? false;
                      if (isFemaleSelected) {
                        isMaleSelected = false; // Uncheck the other box
                      }
                    });
                  },
                ),
                CommonTextLabel(
                  color: grey,
                  text: "Female",
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

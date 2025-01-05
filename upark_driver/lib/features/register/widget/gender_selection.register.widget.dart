import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';
import 'package:upark_driver/features/register/widget/text_label/gender_text_label.register.widget.dart';

class GenderSelectionRegisterWidget extends StatefulWidget {
  const GenderSelectionRegisterWidget({super.key});

  @override
  GenderSelectionRegisterWidgetState createState() =>
      GenderSelectionRegisterWidgetState();
}

class GenderSelectionRegisterWidgetState
    extends State<GenderSelectionRegisterWidget> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderTextLabelRegisterWidget(),
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
                  color: greySecondary,
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
                  color: greySecondary,
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

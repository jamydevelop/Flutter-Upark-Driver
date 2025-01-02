import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class GenderSelectionWidget extends StatefulWidget {
  const GenderSelectionWidget({super.key});

  @override
  GenderSelectionWidgetState createState() => GenderSelectionWidgetState();
}

class GenderSelectionWidgetState extends State<GenderSelectionWidget> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

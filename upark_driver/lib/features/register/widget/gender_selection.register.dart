import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';
import 'package:upark_driver/features/register/widget/text_label/gender_text_label.register.dart';

class GenderSelectionRegister extends StatefulWidget {
  const GenderSelectionRegister({super.key});

  @override
  GenderSelectionRegisterState createState() => GenderSelectionRegisterState();
}

class GenderSelectionRegisterState extends State<GenderSelectionRegister> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderTextLabelRegister(),
        SizedBox(height: extraSmallSpacing),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Checkbox(
                  value: isMaleSelected,
                  activeColor:
                      greenPrimary, // Checkbox fill color when selected
                  side: BorderSide(
                    color: checkBoxColor, // Red border color
                    width: 1, // Border width of 1
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          4) // Rounded corners with radius 4
                      ),
                  onChanged: (bool? value) {
                    setState(() {
                      isMaleSelected = value ?? false; // Handle null value
                      if (isMaleSelected) {
                        isFemaleSelected = false; // Uncheck the other box
                      }
                    });
                  },
                ),
                CommonTextLabel(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  color: greySecondary, //#868686
                  fontSize: fontSizeTitle4, //14px
                  text: "Male",
                ),
              ],
            ),
            SizedBox(width: regularSpacing),
            Row(
              children: [
                Checkbox(
                  side: BorderSide(color: checkBoxColor, width: 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  value: isFemaleSelected,
                  activeColor: greenPrimary, //#379237
                  onChanged: (bool? value) {
                    setState(() {
                      isFemaleSelected =
                          value ?? false; //null-coalescing operator
                      if (isFemaleSelected) {
                        isMaleSelected = false; // Uncheck the other box
                      }
                    });
                  },
                ),
                CommonTextLabel(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  color: greySecondary, //#868686
                  fontSize: fontSizeTitle4, //14px
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

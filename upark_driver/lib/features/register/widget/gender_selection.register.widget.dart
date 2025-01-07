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
                  activeColor: greenPrimary, //#379237
                  onChanged: (bool? value) {
                    setState(() {
                      isMaleSelected =
                          value ?? false; // null-coalescing operator
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

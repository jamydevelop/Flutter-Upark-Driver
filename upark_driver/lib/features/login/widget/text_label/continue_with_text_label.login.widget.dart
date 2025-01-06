import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ContinueWithTextLabelLoginWidget extends StatelessWidget {
  const ContinueWithTextLabelLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CommonTextLabel(
        fontFamily: "Roboto",
        fontWeight: FontWeight.w500,
        fontSize: fontSizeCallout,
        color: greySecondary, //#868686
        text: "Continue with",
      ),
    );
  }
}

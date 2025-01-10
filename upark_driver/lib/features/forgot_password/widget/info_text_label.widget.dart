import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class InfoTextLabelWidget extends StatelessWidget {
  const InfoTextLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonTextLabel(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w400,
          fontSize: fontSizeTitle4, //14px
          textAlign: TextAlign.center,
          color: greySecondary,
          text: "We can send you details on how to reset it.",
        ),
        CommonTextLabel(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w400,
          fontSize: fontSizeTitle4, //14px
          textAlign: TextAlign.center,
          color: greySecondary,
          text: "Please enter your email",
        ),
      ],
    );
  }
}

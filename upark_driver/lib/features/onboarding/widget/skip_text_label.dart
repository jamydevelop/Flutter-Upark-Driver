import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class SkipTextLabel extends StatefulWidget {
  const SkipTextLabel({super.key});

  @override
  State<SkipTextLabel> createState() => _SkipTextLabelState();
}

class _SkipTextLabelState extends State<SkipTextLabel> {
  Color textColor = greenPrimary;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          textColor = greySecondary;
        });
      },
      child: CommonTextLabel(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        fontSize: fontSizeTitle4, //14px
        color: textColor, //#379237
        text: "Skip",
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class NextTextLabel extends StatefulWidget {
  const NextTextLabel({super.key});

  @override
  State<NextTextLabel> createState() => _NextTextLabelState();
}

class _NextTextLabelState extends State<NextTextLabel> {
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
        fontSize: fontSizeTitle4,
        color: textColor,
        text: "Next",
      ),
    );
  }
}

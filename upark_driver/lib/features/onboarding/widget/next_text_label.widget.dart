import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class NextTextLabelWidget extends StatefulWidget {
  const NextTextLabelWidget({super.key});

  @override
  State<NextTextLabelWidget> createState() => _NextTextLabelWidgetState();
}

class _NextTextLabelWidgetState extends State<NextTextLabelWidget> {
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

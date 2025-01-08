import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class SkipTextLabelWidget extends StatefulWidget {
  const SkipTextLabelWidget({super.key});

  @override
  State<SkipTextLabelWidget> createState() => _SkipTextLabelWidgetState();
}

class _SkipTextLabelWidgetState extends State<SkipTextLabelWidget> {
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

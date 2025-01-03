import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class EmailTextLabelLoginWidget extends StatelessWidget {
  const EmailTextLabelLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextLabel(
      color: grey,
      text: "Email",
      fontSize: fontSizeTitle4,
    );
  }
}

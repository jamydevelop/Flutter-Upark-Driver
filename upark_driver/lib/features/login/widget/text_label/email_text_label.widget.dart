import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class EmailTextLabelWidget extends StatelessWidget {
  const EmailTextLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextLabel(
      color: Colors.grey,
      text: "Email",
      fontSize: fontSizeTitle4,
    );
  }
}

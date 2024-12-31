import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class PasswordTextLabelWidget extends StatelessWidget {
  const PasswordTextLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextLabel(
      color: Colors.grey,
      text: "Password",
      fontSize: fontSizeTitle4,
    );
  }
}

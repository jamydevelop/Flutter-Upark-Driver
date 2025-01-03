import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class RegisterContactNumberTextLabelWidget extends StatelessWidget {
  const RegisterContactNumberTextLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      CommonTextLabel(
        color: grey,
        text: "Contact Number",
      )
    ]);
  }
}

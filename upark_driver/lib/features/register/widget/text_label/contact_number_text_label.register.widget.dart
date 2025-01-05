import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ContactNumberTextLabelRegisterWidget extends StatelessWidget {
  const ContactNumberTextLabelRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      CommonTextLabel(
        color: textFieldTextGrey,
        text: "Contact Number",
      )
    ]);
  }
}

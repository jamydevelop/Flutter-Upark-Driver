import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ContactNumberTextLabelRegister extends StatelessWidget {
  const ContactNumberTextLabelRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      CommonTextLabel(
        fontFamily: "Roboto",
        fontWeight: FontWeight.w500,
        fontSize: fontSizeTitle5, //15px
        color: greyPrimary, //#7D7777
        text: "Contact Number",
      )
    ]);
  }
}

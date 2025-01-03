import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class RegisterLastNameTextLabelWidget extends StatelessWidget {
  const RegisterLastNameTextLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CommonTextLabel(
          color: grey,
          text: "Last Name",
          fontSize: fontSizeTitle4,
        ),
      ],
    );
  }
}

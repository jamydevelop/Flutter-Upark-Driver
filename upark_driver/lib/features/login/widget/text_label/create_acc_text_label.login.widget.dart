import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';
import 'package:upark_driver/features/login/widget/text_label/dont_have_acc_text_label.login.widget.dart';

class CreateAccountTextLabelLoginWidget extends StatelessWidget {
  const CreateAccountTextLabelLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DontHaveAccTextLabelLoginWidget(),
        CommonTextLabel(
          color: darkGreen,
          text: "Create Account",
          fontSize: fontSizeCallout,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

<<<<<<<< HEAD:upark_driver/lib/features/register/widget/text_label/dont_have_acc_text_label.login.widget.dart
class DontHaveAccountTextLabelLoginWidget extends StatelessWidget {
  const DontHaveAccountTextLabelLoginWidget({super.key});
========
class RegisterLastNameTextLabelWidget extends StatelessWidget {
  const RegisterLastNameTextLabelWidget({super.key});
>>>>>>>> main:upark_driver/lib/features/register/widget/text_label/register_last_name_text_label.widget.dart

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

import 'package:flutter/material.dart';
import 'package:upark_driver/features/register/widget/button/back_to_screen_button.widget.dart';
import 'package:upark_driver/features/register/widget/text_label/create_account_text_label.widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BackToScreenButtonWidget(),
        CreateAccountTextLabelWidget(),
      ],
    );
  }
}

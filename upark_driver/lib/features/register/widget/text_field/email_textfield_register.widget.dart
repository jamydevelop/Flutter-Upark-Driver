import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/features/register/widget/text_label/email_text_label.register.widget.dart';

class EmailTextfieldRegisterWidget extends StatelessWidget {
  const EmailTextfieldRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmailTextLabelRegisterWidget(),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          hintText: "Enter your email",
          hintTextStyle: TextStyle(
            color: grey,
            fontSize: 16,
          ),
          prefixIcon: Icon(Icons.alternate_email_sharp),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
          },
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        )
      ],
    );
  }
}

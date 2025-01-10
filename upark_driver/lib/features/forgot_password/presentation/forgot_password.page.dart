import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/custom_appbar.widget.dart';
import 'package:upark_driver/features/forgot_password/widget/email_text_field.widget.dart';
import 'package:upark_driver/features/forgot_password/widget/forgot_password_login.button.widget.dart';
import 'package:upark_driver/features/forgot_password/widget/forgot_password_text_label.widget.dart';
import 'package:upark_driver/features/forgot_password/widget/info_text_label.widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(),
      body: Padding(
        padding: const EdgeInsets.only(left: largeSpacing, right: largeSpacing),
        child: Column(
          spacing: regularSpacing,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ForgotPasswordTextLabelWidget(),
            InfoTextLabelWidget(),
            EmailTextFieldWidget(),
            ForgotPasswordLoginButtonWidget(),
          ],
        ),
      ),
    );
  }
}

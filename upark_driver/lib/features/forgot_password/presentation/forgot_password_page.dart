import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_back_appbar.dart';
import 'package:upark_driver/features/forgot_password/widget/email_text_field.dart'
    as fp;
import 'package:upark_driver/features/forgot_password/widget/forgot_password_login.button.dart';
import 'package:upark_driver/features/forgot_password/widget/forgot_password_text_label.dart';
import 'package:upark_driver/features/forgot_password/widget/info_text_label.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonBackAppbar(
        onTap: () => context.go("/login"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: largeSpacing, right: largeSpacing),
        child: Column(
          spacing: regularSpacing,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ForgotPasswordTextLabel(),
            InfoTextLabel(),
            fp.EmailTextField(),
            ForgotPasswordLoginButton(),
          ],
        ),
      ),
    );
  }
}

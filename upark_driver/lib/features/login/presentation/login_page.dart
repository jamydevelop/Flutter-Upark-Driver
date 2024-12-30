import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/login/widget/email_text_label.widget.dart';
import 'package:upark_driver/features/login/widget/email_textfield.widget.dart';
import 'package:upark_driver/features/login/widget/forgot_password_text_label.widget.dart';
import 'package:upark_driver/features/login/widget/login_button.widget.dart';
import 'package:upark_driver/features/login/widget/login_text_label.widget.dart';
import 'package:upark_driver/features/login/widget/or_text_label.widget.dart';
import 'package:upark_driver/features/login/widget/password_text_label.dart';
import 'package:upark_driver/features/login/widget/password_textfield.widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(
            left: largeSpacing,
            right: largeSpacing,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset("assets/images/woman.png"),
                SizedBox(height: largeSpacing),
                LoginTextLabelWidget(),
                SizedBox(height: extraLargeSpacing),
                EmailTextLabelWidget(),
                SizedBox(height: smallSpacing),
                EmailTextfieldWidget(),
                SizedBox(height: smallSpacing),
                PasswordTextLabelWidget(),
                PasswordTextfieldWidget(),
                SizedBox(height: extraLargeSpacing),
                ForgotPasswordTextLabelWidget(),
                SizedBox(height: extraLargeSpacing),
                LoginButtonWidget(),
                SizedBox(height: regularSpacing),
                OrTextLabelWidget(),
                SizedBox(height: regularSpacing),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

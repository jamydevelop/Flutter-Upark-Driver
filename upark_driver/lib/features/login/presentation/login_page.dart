import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/login/widget/text_label/create_acc_text_label.widget.dart';
import 'package:upark_driver/features/login/widget/text_label/dont_have_acc_text_label.widget.dart';
import 'package:upark_driver/features/login/widget/text_label/email_text_label.widget.dart';
import 'package:upark_driver/features/login/widget/text_field/email_textfield.widget.dart';
import 'package:upark_driver/features/login/widget/button/fb_button.widget.dart';
import 'package:upark_driver/features/login/widget/text_label/forgot_password_text_label.widget.dart';
import 'package:upark_driver/features/login/widget/button/google_button.widget.dart';
import 'package:upark_driver/features/login/widget/button/login_button.widget.dart';
import 'package:upark_driver/features/login/widget/text_label/login_text_label.widget.dart';
import 'package:upark_driver/features/login/widget/text_label/or_text_label.widget.dart';
import 'package:upark_driver/features/login/widget/text_label/password_text_label.dart';
import 'package:upark_driver/features/login/widget/text_field/password_textfield.widget.dart';

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
                Image.asset(
                  "assets/images/woman.png",
                  height: 246,
                  width: 326,
                ),
                SizedBox(height: smallSpacing),
                LoginTextLabelWidget(),
                SizedBox(height: regularSpacing),
                EmailTextLabelWidget(),
                EmailTextfieldWidget(),
                SizedBox(height: smallSpacing),
                PasswordTextLabelWidget(),
                PasswordTextfieldWidget(),
                SizedBox(height: regularSpacing),
                ForgotPasswordTextLabelWidget(),
                SizedBox(height: regularSpacing),
                LoginButtonWidget(),
                SizedBox(height: regularSpacing),
                OrTextLabelWidget(),
                SizedBox(height: regularSpacing),
                GoogleButtonWidget(),
                SizedBox(height: regularSpacing),
                FacebookButtonWidget(),
                SizedBox(height: regularSpacing),
                DontHaveAccountTextLabelWidget(),
                CreateAccountTextLabelWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/login/widget/button/fb_button.login.widget.dart';
import 'package:upark_driver/features/login/widget/button/google_button.login.widget.dart';
import 'package:upark_driver/features/login/widget/button/login_button.login.widget.dart';
import 'package:upark_driver/features/register/widget/logo_image.login.widget.dart';
import 'package:upark_driver/features/login/widget/text_field/email_textfield.login.widget.dart';
import 'package:upark_driver/features/login/widget/text_field/password_textfield.login.widget.dart';
import 'package:upark_driver/features/login/widget/text_label/create_acc_text_label.login.widget.dart';
import 'package:upark_driver/features/login/widget/text_label/forgot_password_text_label.login.widget.dart';
import 'package:upark_driver/features/login/widget/text_label/login_text_label.login.widget.dart';
import 'package:upark_driver/features/login/widget/text_label/or_text_label.login.widget.dart';

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
              spacing: regularSpacing,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                LogoImageLoginWidget(),
                LoginTextLabelLoginWidget(),
                EmailTextfieldLoginWidget(),
                LoginPasswordTextfieldLoginWidget(),
                ForgotPasswordTextLabelLoginWidget(),
                LoginButtonLoginWidget(),
                OrTextLabelLoginWidget(),
                GoogleButtonLoginWidget(),
                FacebookButtonLoginWidget(),
                CreateAccountTextLabelLoginWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/login/widget/button/fb_and_google.dart';
import 'package:upark_driver/features/login/widget/button/login_button.login.dart';
import 'package:upark_driver/features/login/widget/logo_image.login.widget.dart';
import 'package:upark_driver/features/login/widget/text_field/email_textfield.login.widget.dart';
import 'package:upark_driver/features/login/widget/text_field/password_textfield.login.widget.dart';
import 'package:upark_driver/features/login/widget/text_label/continue_with_text_label.login.widget.dart'
    as test;
import 'package:upark_driver/features/login/widget/text_label/create_acc_text_label.login.widget.dart';
import 'package:upark_driver/features/login/widget/text_label/forgot_password_text_label.login.widget.dart';
import 'package:upark_driver/features/login/widget/text_label/login_text_label.login.widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
            statusBarColor: Colors.white),
        child: Material(
          color: Colors.white,
          child: Padding(
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
                  SizedBox(height: smallSpacing),
                  LoginTextLabelLoginWidget(),
                  EmailTextfieldLoginWidget(),
                  LoginPasswordTextfieldLoginWidget(),
                  ForgotPasswordTextLabelLoginWidget(),
                  LoginButtonLogin(onTap: () => context.go("/bottomnav")),
                  test.ContinueWithTextLabelLoginWidget(),
                  //OrTextLabelLoginWidget(),
                  FbAndGoogle(),
                  CreateAccountTextLabelLoginWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

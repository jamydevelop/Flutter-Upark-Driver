import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';
import 'package:upark_driver/features/login/widget/email_textfield.widget.dart';
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
                SizedBox(
                  height: largeSpacing,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: fontSizeTitle1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: extraLargeSpacing),
                CommonTextLabel(
                  color: Colors.grey,
                  text: "Email",
                  fontSize: fontSizeTitle4,
                ),
                SizedBox(height: smallSpacing),
                EmailTextfieldWidget(),
                SizedBox(height: smallSpacing),
                CommonTextLabel(
                  color: Colors.grey,
                  text: "password",
                  fontSize: fontSizeTitle4,
                ),
                PasswordTextfieldWidget(),
                SizedBox(height: smallSpacing),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

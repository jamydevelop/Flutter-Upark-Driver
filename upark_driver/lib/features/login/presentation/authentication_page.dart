import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isTextShown = false;
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
                CommonTextField(
                  hintText: "Enter your email",
                  prefixIcon: Icon(
                    Icons.alternate_email,
                    color: Colors.grey,
                  ),
                  onFieldSubmitted: (value) {
                    // Hide the on-screen keyboard
                    FocusScope.of(context).unfocus();
                  },
                  keyboardType: TextInputType.emailAddress,
                  inputBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  obscureText: false, // Email should always be visible
                ),
                SizedBox(height: smallSpacing),
                CommonTextLabel(
                  color: Colors.grey,
                  text: "password",
                  fontSize: fontSizeTitle4,
                ),
                SizedBox(height: smallSpacing),
                CommonTextField(
                  hintText: "Password",
                  prefixIcon: Icon(
                    Icons.key_sharp,
                    color: Colors.grey,
                  ),
                  onFieldSubmitted: (value) {
                    // Hide the on-screen keyboard
                    FocusScope.of(context).unfocus();
                  },
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isTextShown
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isTextShown = !_isTextShown; // Toggle visibility state
                      });
                    },
                  ),
                  obscureText:
                      !_isTextShown, // If true, hides the text, otherwise shows it
                  fillColor: Colors.white,
                  filled: true,
                  keyboardType: TextInputType.text,
                  inputBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

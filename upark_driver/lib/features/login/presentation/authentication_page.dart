import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
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
                  //labelText: "Email",
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
                      borderSide: BorderSide(color: Colors.grey.shade400)),
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
                  suffixIcon: Icon(
                    Icons.visibility, // Right-side icon
                    color: Colors.grey,
                  ),
                  //isSecure: true,
                  fillColor: Colors.white,
                  filled: true,
                  keyboardType: TextInputType.text,
                  inputBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Colors.grey.shade400)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

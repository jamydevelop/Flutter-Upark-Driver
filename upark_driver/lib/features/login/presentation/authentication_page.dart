import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';

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
              Text("Email"),
              Text("Password"),
            ],
          ),
        ),
      ),
    );
  }
}

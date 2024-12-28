import 'package:flutter/material.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("THIS IS MY DOG! ROKU!"),
          Text("Hi"),
          Image.asset('assets/images/husky.jpg'),
          Image.asset("assets/images/woman.png"),
          Text("data"),
          Text("Hi"),
          Text("World!!!"),
          Text("this is added text")
          // Image.asset(
          //   "woman.png",
          //   width: 300,
          //   height: 300,
          // ),
        ],
      ),
    );
  }
}

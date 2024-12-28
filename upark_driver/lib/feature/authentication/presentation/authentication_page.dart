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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("THIS IS MY DOG! ROKU!"),
            Text("Hi"),
            Image.asset('assets/images/husky.jpg'),
            Image.asset("assets/images/woman.png"),
            Text("data"),
            Text("Hi"),
            Text("World!!!"),
            Image.asset(
              "woman.png",
              width: 300,
              height: 300,
            ),
            SizedBox(
              height: 14,
            ),
            Image(
              image: AssetImage("woman.png"),
            ),
            SizedBox(
              height: 14,
            ),
            Image(
              image: AssetImage("download.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}

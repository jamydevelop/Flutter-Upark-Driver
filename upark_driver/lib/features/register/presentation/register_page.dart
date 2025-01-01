import 'package:flutter/material.dart';
import 'package:upark_driver/features/register/widget/back_to_screen_button.widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              BackToScreenButtonWidget(),
              TextButton(
                onPressed: () {},
                child: Text("data"),
              ),
              Text("data"),
            ],
          ),
        ),
      ),
    );
  }
}

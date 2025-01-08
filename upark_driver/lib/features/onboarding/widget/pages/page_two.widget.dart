import 'package:flutter/material.dart';

class PageTwoWidget extends StatelessWidget {
  const PageTwoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          color: Colors.blue,
          child: Center(
            child: Text("data"),
          ),
        ),
      ),
    );
  }
}

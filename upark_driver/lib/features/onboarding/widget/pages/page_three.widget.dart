import 'package:flutter/material.dart';

class PageThreeWidget extends StatelessWidget {
  const PageThreeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          color: Colors.green,
          child: Center(
            child: Text("data"),
          ),
        ),
      ),
    );
  }
}

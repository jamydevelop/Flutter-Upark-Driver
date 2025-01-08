import 'package:flutter/material.dart';

class PageOneWidget extends StatelessWidget {
  const PageOneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          color: Colors.red,
          child: Center(
            child: Text("data"),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PageOneWidget extends StatelessWidget {
  const PageOneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
            child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber,
          child: Column(
            children: [
              Image.asset("assets/images/page1.png"),
            ],
          ),
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(child: Text("data")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(child: Text("data")),
          )
        ],
      ),
      body: Stack(),
    );
  }
}

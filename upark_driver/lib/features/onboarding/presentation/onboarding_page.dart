import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/features/onboarding/widget/next_text_label.widget.dart';
import 'package:upark_driver/features/onboarding/widget/skip_text_label.widget.dart';

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
        scrolledUnderElevation: 0.0,
        leading: Center(child: SkipTextLabelWidget()),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(child: NextTextLabelWidget()),
          )
        ],
        backgroundColor: whitePrimary,
      ),
      body: Stack(),
    );
  }
}

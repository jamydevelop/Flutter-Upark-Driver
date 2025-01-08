import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/onboarding/widget/next_text_label.widget.dart';
import 'package:upark_driver/features/onboarding/widget/pages/page_one.widget.dart';
import 'package:upark_driver/features/onboarding/widget/pages/page_three.widget.dart';
import 'package:upark_driver/features/onboarding/widget/pages/page_two.widget.dart';
import 'package:upark_driver/features/onboarding/widget/skip_text_label.widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(regularSpacing),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SkipTextLabelWidget(),
                NextTextLabelWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: [
                PageOneWidget(),
                PageTwoWidget(),
                PageThreeWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
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
      appBar: AppBar(
        backgroundColor: whitePrimary,
        scrolledUnderElevation: 0.0,
        leading: Center(child: SkipTextLabelWidget()),
        actions: [
          Padding(
            padding: const EdgeInsets.all(extraNormalSpacing),
            child: NextTextLabelWidget(),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 800,
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

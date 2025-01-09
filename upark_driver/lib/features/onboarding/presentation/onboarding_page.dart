import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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
  int currentPage = 0;

  // List of pages
  final List<Widget> pages = [
    PageOneWidget(),
    PageTwoWidget(),
    PageThreeWidget(),
  ];

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        currentPage = _controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitePrimary,
        scrolledUnderElevation: 0.0,
        leading: currentPage == 2
            ? SizedBox()
            : Center(child: SkipTextLabelWidget()),
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
            height: 650,
            child: PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return pages[index];
              },
            ),
          ),
          // Text(
          //   'Current Page: $currentPage',
          //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          // ),
          SmoothPageIndicator(
            controller: _controller,
            count: pages.length,
            effect: ExpandingDotsEffect(
              activeDotColor: greenPrimary,
              dotColor: checkBoxColor,
              dotHeight: dotSize,
              dotWidth: dotSize,
            ),
          ),
        ],
      ),
    );
  }
}

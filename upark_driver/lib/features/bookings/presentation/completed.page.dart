import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/homepage/bookings/widget/completed_card.widget.dart';

class CompletedPage extends StatefulWidget {
  const CompletedPage({super.key});

  @override
  State<CompletedPage> createState() => _CompletedPageState();
}

class _CompletedPageState extends State<CompletedPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: largeSpacing, vertical: extraLargeSpacing),
        child: Column(
          spacing: normalSpacing,
          children: <Widget>[
            CompletedCardWidget(),
            CompletedCardWidget(),
            CompletedCardWidget(),
            CompletedCardWidget(),
            CompletedCardWidget(),
            CompletedCardWidget(),
          ],
        ),
      ),
    );
  }
}

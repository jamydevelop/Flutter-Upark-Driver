import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/bookings/widget/approved_card.widget.dart';

class ApprovedPage extends StatefulWidget {
  const ApprovedPage({super.key});

  @override
  State<ApprovedPage> createState() => _ApprovedPageState();
}

class _ApprovedPageState extends State<ApprovedPage> {
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
            ApprovedCardWidget(),
            ApprovedCardWidget(),
            ApprovedCardWidget(),
            ApprovedCardWidget(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/homepage/bookings/widget/cancelled_card.widget.dart';

class CancelledPage extends StatefulWidget {
  const CancelledPage({super.key});

  @override
  State<CancelledPage> createState() => _CancelledPageState();
}

class _CancelledPageState extends State<CancelledPage> {
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
            CancelledCardWidget(),
            CancelledCardWidget(),
            CancelledCardWidget(),
            CancelledCardWidget(),
            CancelledCardWidget(),
            CancelledCardWidget(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/bookings/widget/to_pay_card.widget.dart';

class ToPayPage extends StatefulWidget {
  const ToPayPage({super.key});

  @override
  State<ToPayPage> createState() => _ToPayPageState();
}

class _ToPayPageState extends State<ToPayPage> {
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
            ToPayCardWidget(),
            ToPayCardWidget(),
            ToPayCardWidget(),
            ToPayCardWidget(),
            ToPayCardWidget(),
            ToPayCardWidget(),
            ToPayCardWidget(),
            ToPayCardWidget(),
          ],
        ),
      ),
    );
  }
}

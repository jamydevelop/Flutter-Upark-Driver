import 'package:flutter/material.dart';
import 'package:upark_driver/features/homepage/bookings/widget/approved_card.widget.dart';

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
      child: Column(
        children: <Widget>[
          ApprovedCardWidget(),
        ],
      ),
    );
  }
}

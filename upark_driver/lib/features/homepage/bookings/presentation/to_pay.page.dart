import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';

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
          children: <Widget>[],
        ),
      ),
    );
  }
}

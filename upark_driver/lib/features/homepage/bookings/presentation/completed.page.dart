import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';

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
          children: <Widget>[],
        ),
      ),
    );
  }
}

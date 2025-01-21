import 'package:flutter/material.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';
import 'package:upark_driver/features/home/widget/home_silver_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeSilverAppbar(),
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 110,
                    width: double.infinity,
                    child: Column(
                      children: [CommonTextLabel(text: "text")],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

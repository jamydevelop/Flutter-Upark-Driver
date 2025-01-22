import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/home/widget/home_silver_appbar.dart';
import 'package:upark_driver/features/home/widget/reserve_parking_space.widget.dart';
import 'package:upark_driver/features/home/widget/reserve_parking_title.dart';

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
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: largeSpacing, vertical: largeSpacing),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReserveParkingTitle(),
                    SizedBox(height: regularSpacing),
                    ReserveParkingSpaceWidget(),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/homepage/home/widget/available_parking_space.widget.dart';
import 'package:upark_driver/features/homepage/home/widget/home_silver_appbar.dart';
import 'package:upark_driver/features/homepage/home/widget/no_resereved_parking_slot.widget.dart';
import 'package:upark_driver/features/homepage/home/widget/parking_spaces_and_see_all.dart';
import 'package:upark_driver/features/homepage/home/widget/reserved_parking_space.widget.dart';
import 'package:upark_driver/features/homepage/home/widget/reserve_parking_title.dart';

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
                  spacing: regularSpacing,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReserveParkingTitle(),
                    ReservedParkingSpaceWidget(),
                    NoReserevedParkingSlotWidget(),
                    ParkingSpacesAndSeeAll(),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: normalSpacing,
                        children: [
                          AvailableParkingSpaceWidget(),
                          AvailableParkingSpaceWidget(),
                          AvailableParkingSpaceWidget(),
                          AvailableParkingSpaceWidget(),
                          AvailableParkingSpaceWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

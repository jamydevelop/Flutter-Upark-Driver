import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_back_appbar.dart';
import 'package:upark_driver/features/parking_spaces/widget/parking_spaces_card.widget.dart';
import 'package:upark_driver/features/parking_spaces/widget/search_parking.widget.dart';

class ParkingSpacesPage extends StatefulWidget {
  const ParkingSpacesPage({super.key});

  @override
  State<ParkingSpacesPage> createState() => _ParkingSpacesPageState();
}

class _ParkingSpacesPageState extends State<ParkingSpacesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonBackAppbar(
        onTap: () => context.go("/bottomnav"),
        textTitle: "Parking Spaces",
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: largeSpacing, vertical: extraLargeSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SearchParkingWidget(),
              SizedBox(height: largeSpacing),
              Column(
                spacing: largeSpacing,
                children: [
                  ParkingSpacesCardWidget(),
                  ParkingSpacesCardWidget(),
                  ParkingSpacesCardWidget(),
                  ParkingSpacesCardWidget(),
                  ParkingSpacesCardWidget(),
                  ParkingSpacesCardWidget(),
                  ParkingSpacesCardWidget(),
                  ParkingSpacesCardWidget(),
                  ParkingSpacesCardWidget(),
                  ParkingSpacesCardWidget(),
                  ParkingSpacesCardWidget(),
                  ParkingSpacesCardWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

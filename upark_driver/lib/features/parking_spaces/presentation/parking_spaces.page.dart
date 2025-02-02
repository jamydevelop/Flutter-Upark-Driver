import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/widget/common_back_appbar.dart';

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
        context: context,
        onTap: () => context.go("/home"),
        textTitle: "Parking Spaces",
      ),
    );
  }
}

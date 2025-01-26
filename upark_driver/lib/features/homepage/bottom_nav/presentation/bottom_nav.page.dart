import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/features/homepage/bookings/presentation/bookings.page.dart';
import 'package:upark_driver/features/homepage/home/presentation/home.page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int currentPageIndex = 0;

  void _onTappedItem(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        Center(child: HomePage()), // Ensure the content is centered
        Center(child: BookingsPage()),
        Center(child: Text("Last Page")),
      ][currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _buildIcon(Assets.homeIcon, 0),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Assets.bookingsIcon, 1),
              label: "Bookings",
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Assets.profileIcon, 2),
              label: "Profile",
            ),
          ],
          currentIndex: currentPageIndex,
          onTap: _onTappedItem,
          selectedItemColor: blackPrimary),
    );
  }

  Widget _buildIcon(String assetPath, int index) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        currentPageIndex == index ? blackPrimary : greySecondary,
        BlendMode.srcIn,
      ),
      child: Image.asset(
        assetPath,
        scale: 3,
      ),
    );
  }
}

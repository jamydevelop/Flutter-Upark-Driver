import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/features/dashboard/bookings/presentation/bookings_page.dart';
import 'package:upark_driver/features/dashboard/home/presentation/home_page.dart';
import 'package:upark_driver/features/dashboard/profile/presentation/profile_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key, this.initialIndex = 0});

  final int initialIndex;

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int? _currentPageIndex;

  final List<Widget> _pages = [
    HomePage(),
    BookingsPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    _currentPageIndex = widget.initialIndex;
  }

  void _onTappedItem(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex ?? 0],
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
          currentIndex: _currentPageIndex ?? 0,
          onTap: _onTappedItem,
          selectedItemColor: greenPrimary),
    );
  }

  Widget _buildIcon(String assetPath, int index) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        _currentPageIndex == index ? greenPrimary : greySecondary,
        BlendMode.srcIn,
      ),
      child: Image.asset(
        assetPath,
        scale: 3,
      ),
    );
  }
}

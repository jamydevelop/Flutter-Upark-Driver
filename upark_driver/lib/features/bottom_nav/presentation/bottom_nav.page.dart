import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';

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
        Center(child: Text("First Page")), // Ensure the content is centered
        Center(child: Text("Second Page")),
        Center(child: Text("Last Page")),
      ][currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _buildIcon("assets/icons/home_icon.png", 0),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: _buildIcon("assets/icons/bookings_icon.png", 1),
              label: "Bookings",
            ),
            BottomNavigationBarItem(
              icon: _buildIcon("assets/icons/profile_icon.png", 2),
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

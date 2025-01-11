import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        Text("First Page"),
        Text("Second Page"),
        Text("Last Page"),
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        destinations: <Widget>[
          NavigationDestination(icon: Icon(Icons.home_rounded), label: "label"),
          NavigationDestination(icon: Icon(Icons.home_rounded), label: "label"),
          NavigationDestination(icon: Icon(Icons.home_rounded), label: "label")
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
      ),
    );
  }
}

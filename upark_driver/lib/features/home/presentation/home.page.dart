import 'package:flutter/material.dart';
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
            child: Center(
              child: Text("This is sample body text"),
            ),
          ),
        ],
      ),
    );
  }
}

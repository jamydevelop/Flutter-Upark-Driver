import 'package:flutter/material.dart';

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
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            title: Text("Sample Title"),
            flexibleSpace: FlexibleSpaceBar(
              background: Color,
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text("This is sample body text"),
            ),
          ),
        ],
      ),
    );
  }
}

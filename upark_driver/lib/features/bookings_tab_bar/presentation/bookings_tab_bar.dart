import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class BookingsTabBar extends StatefulWidget {
  const BookingsTabBar({super.key});

  @override
  State<BookingsTabBar> createState() => _BookingsTabBarState();
}

class _BookingsTabBarState extends State<BookingsTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: CommonTextLabel(
                  text: "Pending",
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: fontSizeTitle4,
                ),
              ),
              Tab(
                child: CommonTextLabel(
                  text: "Approved",
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  fontSize: fontSizeTitle4,
                ),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}

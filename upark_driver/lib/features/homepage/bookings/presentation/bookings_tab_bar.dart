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
      length: 3,
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
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: fontSizeTitle4,
                ),
              ),
              Tab(
                child: CommonTextLabel(
                  text: "Cancelled",
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: fontSizeTitle4,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text("Pending Page"),
            ),
            Center(
              child: Text("Approved Page"),
            ),
            Center(
              child: Text("Cancelled Page"),
            ),
          ],
        ),
      ),
    );
  }
}

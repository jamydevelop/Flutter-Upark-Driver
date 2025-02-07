import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class BookingsSilverAppbar extends SliverAppBar {
  final TabController tabController;
  final Function(int value) onTap;
  final int index;

  BookingsSilverAppbar(
      {super.key,
      required this.tabController,
      required this.onTap,
      required this.index})
      : super(
          backgroundColor: whitePrimary,
          pinned: true,
          bottom: TabBar(
            controller: tabController,
            onTap: onTap,
            isScrollable: false,
            labelStyle: TextStyle(
                color: blackPrimary,
                fontSize: fontSizeTitle4,
                fontWeight: FontWeight.w600),
            unselectedLabelStyle: TextStyle(
                color: greyPrimary,
                fontSize: fontSizeTitle4,
                fontWeight: FontWeight.w400),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                color: greenPrimary,
                width: 3.0, // Thickness of the underline
              ),
            ),
            tabs: [
              Tab(text: "To Pay"),
              Tab(text: "Approved"),
              Tab(text: "Cancelled"),
              Tab(text: "Completed")
            ],
          ),
        );
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class BookingsSilverAppbar extends SliverAppBar {
  const BookingsSilverAppbar({super.key})
      : super(
          backgroundColor: whitePrimary,
          pinned: true,
          // floating: true,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                  child: CommonTextLabel(
                      text: "To Pay",
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: fontSizeTitle4)),
              Tab(
                  child: CommonTextLabel(
                      text: "Approved",
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: fontSizeTitle4)),
              Tab(
                  child: CommonTextLabel(
                      text: "Cancelled",
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: fontSizeTitle4)),
              Tab(
                  child: CommonTextLabel(
                      text: "Completed",
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: fontSizeTitle4)),
            ],
          ),
        );
}

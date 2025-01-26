import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class BookingsSilverAppbar extends SliverAppBar {
  const BookingsSilverAppbar({super.key})
      : super(
          pinned: true,
          floating: true,
          expandedHeight: 120.0,
          bottom: const TabBar(
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
        );
}

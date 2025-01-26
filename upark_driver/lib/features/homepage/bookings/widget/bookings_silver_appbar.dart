import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class BookingsSilverAppbar extends SliverAppBar {
  final TabController tabController;

  BookingsSilverAppbar({super.key, required this.tabController})
      : super(
          backgroundColor: whitePrimary,
          pinned: true,
          bottom: TabBar(
            controller: tabController,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                color: greenPrimary,
                width: 3.0, // Thickness of the underline
              ),
            ),
            tabs: List.generate(4, (index) {
              final labels = ["To Pay", "Approved", "Cancelled", "Completed"];
              return Tab(
                child: AnimatedBuilder(
                  animation: tabController,
                  builder: (context, child) {
                    final isSelected = tabController.index == index;
                    return CommonTextLabel(
                      text: labels[index],
                      fontFamily: "Poppins",
                      fontWeight:
                          isSelected ? FontWeight.w600 : FontWeight.w400,
                      fontSize: fontSizeTitle3,
                      color: isSelected ? Colors.black : greySecondary,
                    );
                  },
                ),
              );
            }),
          ),
        );
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_icon_button.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';
import 'package:upark_driver/features/dashboard/home/widget/edit_profile_button_icon.dart';

class HomeSilverAppbar extends SliverAppBar {
  HomeSilverAppbar({super.key})
      : super(
          pinned: true,
          backgroundColor: appbarPrimary,
          expandedHeight: 220.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First Row: 2 IconButtons aligned to the right
                SizedBox(height: extraLargeSpacing),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: largeSpacing, vertical: 16.0), //eto yun
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Aligning icons to the right
                    children: [
                      Row(
                        children: [
                          EditProfileButtonIcon(
                            onTap: () =>
                                debugPrint("Edit Profile Button Icon Pressed!"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CommonIconButton(
                              iconPath: Assets.bellIcon, onTap: () {}),
                          const SizedBox(width: smallSpacing),
                          CommonIconButton(
                              iconPath: Assets.messageIcon, onTap: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
                // Second Row: Text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: largeSpacing),
                  child: Text(
                    "Find Your Nearest \nParking Space",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: blackPrimary,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: largeSpacing, top: normalSpacing),
                  child: SizedBox(
                    width: 146,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () => debugPrint("Button Pressed"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: greenPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Rounded corners with radius 8
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center, // Center the content
                        children: [
                          Image.asset(
                            "assets/icons/locate_icon.png",
                            scale: 3,
                          ),
                          const SizedBox(width: 8),
                          CommonTextLabel(
                            text: "Explore",
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w600,
                            fontSize: fontSizeTitle6,
                            color: whitePrimary,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class CommonWidgetButton extends StatelessWidget {
  const CommonWidgetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: whitePrimary,
      padding: EdgeInsets.symmetric(
          horizontal: normalSpacing), // Adds horizontal padding
      child: Row(
        children: [
          // Icon inside a circular container
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: profileIconBackgroung,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(
                Assets.profileFavorite,
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(width: normalSpacing), // Space between icon and text

          // Text
          CommonTextLabel(
            text: "Favorites",
            fontWeight: FontWeight.w500,
            fontSize: fontSizeTitle6,
            color: greySecondary,
          ),

          Spacer(), // Pushes the arrow icon to the right

          // Arrow icon
          Image.asset(
            Assets.profileArrow,
            width: 18,
            height: 18,
          ),
        ],
      ),
    );
  }
}

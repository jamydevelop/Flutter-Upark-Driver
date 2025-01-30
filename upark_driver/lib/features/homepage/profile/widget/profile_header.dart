import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 74,
          decoration: BoxDecoration(
            color: Colors.amber,
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.asset(
              "assets/images/edit_profile_img.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        CommonTextLabel(
          text: "Russel Tepino",
          fontWeight: FontWeight.w500,
          fontSize: bigFontSizeTitle1,
        ),
        CommonTextLabel(
          text: "russel@gmail.com",
          fontWeight: FontWeight.w400,
          fontSize: fontSizeTitle2,
          color: greySecondary,
        )
      ],
    );
  }
}

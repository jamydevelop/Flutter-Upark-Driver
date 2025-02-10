import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class CommonBackAppbar extends AppBar {
  final VoidCallback onTap;
  final String? textTitle;
  CommonBackAppbar({super.key, required this.onTap, this.textTitle})
      : super(
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: blackSecondary),
                onPressed: onTap),
            title: CommonTextLabel(
              text: textTitle ?? "",
              fontWeight: FontWeight.w500,
              fontSize: fontSizeTitle8,
              color: blackPrimary,
            ),
            backgroundColor: whitePrimary,
            automaticallyImplyLeading: true,
            scrolledUnderElevation: 0.0);
}

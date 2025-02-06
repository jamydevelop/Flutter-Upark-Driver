import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class NotificationsHeader extends StatelessWidget {
  const NotificationsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: largeSpacing, vertical: largeSpacing),
      child: CommonTextLabel(
        text: "Notifications",
        fontWeight: FontWeight.w600,
        fontSize: bigFontSizeTitle1,
        color: blackPrimary,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/notifications/widget/common_notif_label.dart';
import 'package:upark_driver/features/notifications/widget/common_notification_card.dart';

class YesterdaySection extends StatelessWidget {
  const YesterdaySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: extraSmallSpacing),
        CommonNotifLabel(text: "Yesterday"),
        CommonNotificationCard(
          headerText: "SM City Davao",
          subText: "Your pending booking has been approved!",
          dateAndTime: "05/24/2024 at 9:30AM",
          imagePath: Assets.notificationsImage,
          isUnread: false,
        ),
      ],
    );
  }
}

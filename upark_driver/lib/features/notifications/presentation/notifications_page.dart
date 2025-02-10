import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/widget/common_back_appbar.dart';
import 'package:upark_driver/features/notifications/widget/common_notification_card.dart';
import 'package:upark_driver/features/notifications/widget/notifications_card.widget.dart';
import 'package:upark_driver/features/notifications/widget/notifications_header.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonBackAppbar(
        context: context,
        onTap: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            NotificationsHeader(),
            NotificationsCardWidget(),
            CommonNotificationCard(
              headerText: "SM City Davao",
              subText: "Your pending booking has been approved!",
              dateAndTime: "05/24/2024 at 9:30AM",
              imagePath: Assets.notificationsImage,
              isUnread: false,
            ),
          ],
        ),
      ),
    );
  }
}

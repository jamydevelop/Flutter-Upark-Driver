import 'package:flutter/material.dart';
import 'package:upark_driver/core/widget/common_back_appbar.dart';
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
          children: <Widget>[
            NotificationsHeader(),
          ],
        ),
      ),
    );
  }
}

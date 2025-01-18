import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';

class NotificationButtonIcon extends StatelessWidget {
  final VoidCallback onPress;
  const NotificationButtonIcon({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Container(
        width: 39,
        height: 37,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: whitePrimary,
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.notifications_none),
      ),
      onPressed: onPress,
    );
  }
}

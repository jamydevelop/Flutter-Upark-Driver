import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';

class MessageButtonIcon extends StatelessWidget {
  final VoidCallback onPress;
  const MessageButtonIcon({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Container(
        width: 39,
        height: 37,
        padding: const EdgeInsets.all(8.0), // Inner padding for the icon
        decoration: BoxDecoration(
          color: whitePrimary, // White background color
          shape: BoxShape.circle, // Circular shape
        ),
        child: Image.asset(
          "assets/icons/message_icon.png",
          scale: 3,
        ),
      ),
      onPressed: () {
        // Add your onPressed action here
      },
    );
  }
}

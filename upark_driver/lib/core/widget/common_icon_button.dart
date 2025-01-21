import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';

class CommonIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onPress;
  const CommonIconButton(
      {super.key, required this.iconPath, required this.onPress});

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
          iconPath,
          scale: 1,
        ),
      ),
      onPressed: onPress,
    );
  }
}

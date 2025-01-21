import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';

class CommonIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onTap;
  const CommonIconButton(
      {super.key, required this.iconPath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.yellow,
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        width: 39,
        height: 37,
        padding: const EdgeInsets.all(8.0), // Inner padding for the icon
        decoration: BoxDecoration(
          color: whitePrimary, // White background color
          shape: BoxShape.circle, // Circular shape
        ),
        child:
            Image.asset(iconPath, height: 37.0, width: 39.0, fit: BoxFit.fill),
      ),
    );
  }
}

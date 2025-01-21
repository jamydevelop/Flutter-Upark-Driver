import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';

class EditProfileButtonIcon extends StatelessWidget {
  const EditProfileButtonIcon(
      {super.key, required this.onTap, this.borderRadius = 30.0});

  final VoidCallback onTap;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.yellow,
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
          width: 39,
          height: 37,
          decoration:
              BoxDecoration(color: whitePrimary, shape: BoxShape.circle),
          child: Image.asset("assets/icons/gengar_icon_image.png",
              height: 37.0, width: 39.0, fit: BoxFit.fill)),
    );
  }
}

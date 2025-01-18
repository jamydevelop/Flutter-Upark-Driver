import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';

class EditProfileButtonIcon extends StatelessWidget {
  final VoidCallback onPress;
  const EditProfileButtonIcon({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Container(
        width: 39,
        height: 37,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(color: whitePrimary, shape: BoxShape.circle),
        child: Image.asset(
          "assets/icons/gengar_icon_image.png",
          scale: 3,
        ),
      ),
      onPressed: () => onPress,
    );
  }
}

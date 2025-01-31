import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';

class CommonBackAppbar extends AppBar {
  final VoidCallback onTap;
  CommonBackAppbar(
      {required BuildContext context, super.key, required this.onTap})
      : super(
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: blackSecondary),
                onPressed: onTap),
            backgroundColor: whitePrimary,
            automaticallyImplyLeading: true,
            scrolledUnderElevation: 0.0);
}

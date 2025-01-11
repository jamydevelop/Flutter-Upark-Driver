import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/colors.dart';

class CommonBackAppbar extends AppBar {
  CommonBackAppbar({required BuildContext context, super.key})
      : super(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: blackSecondary),
              onPressed: () {
                context.go("/login"); // Go to login page on back button press
              },
            ),
            backgroundColor: whitePrimary,
            automaticallyImplyLeading: true,
            scrolledUnderElevation: 0.0);
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/colors.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppbar({super.key});

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight); // Standard AppBar height

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0.0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: blackSecondary),
        onPressed: () {
          context.go("/login"); // Go to login page on back button press
        },
      ),
      backgroundColor: Colors.white, // Static white color for the AppBar
      automaticallyImplyLeading: true,
    );
  }
}

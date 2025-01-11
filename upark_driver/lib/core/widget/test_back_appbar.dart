import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/colors.dart';

class TestBackAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TestBackAppbar({super.key});

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight); // Standard AppBar height

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: blackSecondary),
        onPressed: () {
          context.go("/login"); // Go to login page on back button press
        },
      ),
      backgroundColor: Colors.white, // Static white color for the AppBar
      automaticallyImplyLeading: true,
      scrolledUnderElevation: 0.0,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/features/dashboard/profile/widget/common_widget.button.dart';

class BookingsWidget extends StatelessWidget {
  const BookingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWidgetButton(
      iconString: Assets.profileBookings,
      textTitle: "Bookings",
      onTap: () => context.go("/forgotpassword"),
    );
  }
}

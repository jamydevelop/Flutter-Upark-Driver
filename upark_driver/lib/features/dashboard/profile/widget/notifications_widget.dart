import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/features/dashboard/profile/widget/common_widget.button.dart';

class NotificationsWidget extends StatelessWidget {
  const NotificationsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return CommonWidgetButton(
      iconString: Assets.profileNotifications,
      textTitle: "Notifications",
      onTap: () => context.go("/forgotpassword"),
    );
  }
}

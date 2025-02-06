import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/features/homepage/profile/widget/common_widget.button.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return CommonWidgetButton(
      arrowColor: redSecondary,
      textColor: redSecondary,
      iconString: Assets.profileLogout,
      textTitle: "Log out",
      onTap: () => context.go("/forgotpassword"),
    );
  }
}

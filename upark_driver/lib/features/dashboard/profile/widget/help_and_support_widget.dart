import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/features/dashboard/profile/widget/common_widget.button.dart';

class HelpAndSupportWidget extends StatelessWidget {
  const HelpAndSupportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWidgetButton(
      iconString: Assets.profileHelpAndSupport,
      textTitle: "Help & Support",
      onTap: () => context.go("/forgotpassword"),
    );
  }
}

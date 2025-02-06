import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/features/dashboard/profile/widget/common_widget.button.dart';

class DeleteAccountWidget extends StatelessWidget {
  const DeleteAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWidgetButton(
      arrowColor: redSecondary,
      textColor: redSecondary,
      iconString: Assets.profileDeleteAccount,
      textTitle: "Delete Account",
      onTap: () => context.go("/forgotpassword"),
    );
  }
}

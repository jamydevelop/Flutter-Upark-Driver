import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/features/homepage/profile/widget/common_widget.button.dart';

class ChangePasswordWidget extends StatelessWidget {
  const ChangePasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWidgetButton(
      iconString: Assets.profileChangePassword,
      textTitle: "Change Password",
      onTap: () => context.go("/forgotpassword"),
    );
  }
}

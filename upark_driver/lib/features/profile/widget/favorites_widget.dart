import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/features/profile/widget/common_widget.button.dart';

class FavoritesWidget extends StatelessWidget {
  const FavoritesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWidgetButton(
      iconString: Assets.profileFavorite,
      textTitle: "Favorites",
      onTap: () => context.go("/forgotpassword"),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/homepage/profile/widget/favorites_widget.dart';
import 'package:upark_driver/features/homepage/profile/widget/profile_header.dart';
import 'package:upark_driver/features/homepage/profile/widget/title_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: largeSpacing, vertical: mostLargeSpacing),
          child: Column(
            spacing: regularSpacing,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ProfileHeader(),
              SizedBox(height: regularSpacing),
              TitleWidget(value: "Content"),
              FavoritesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

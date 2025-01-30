import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/homepage/profile/widget/bookings_widget.dart';
import 'package:upark_driver/features/homepage/profile/widget/change_password_widget.dart';
import 'package:upark_driver/features/homepage/profile/widget/delete_account_widget.dart';
import 'package:upark_driver/features/homepage/profile/widget/favorites_widget.dart';
import 'package:upark_driver/features/homepage/profile/widget/help_and_support_widget.dart';
import 'package:upark_driver/features/homepage/profile/widget/log_out_widget.dart';
import 'package:upark_driver/features/homepage/profile/widget/notifications_widget.dart';
import 'package:upark_driver/features/homepage/profile/widget/profile_header.dart';
import 'package:upark_driver/features/homepage/profile/widget/terms_and_policies_widget.dart';
import 'package:upark_driver/features/homepage/profile/widget/title_widget.dart';
import 'package:upark_driver/features/homepage/profile/widget/vehicle_details_widget.dart';

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
          child: SingleChildScrollView(
            child: Column(
              spacing: extraNormalSpacing,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ProfileHeader(),
                SizedBox(height: regularSpacing),
                TitleWidget(value: "Content"),
                FavoritesWidget(),
                BookingsWidget(),
                TitleWidget(value: "Preferences"),
                NotificationsWidget(),
                ChangePasswordWidget(),
                VehicleDetailsWidget(),
                TermsAndPoliciesWidget(),
                HelpAndSupportWidget(),
                DeleteAccountWidget(),
                LogOutWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

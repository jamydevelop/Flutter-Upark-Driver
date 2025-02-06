import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_back_appbar.dart';
import 'package:upark_driver/features/edit_profile/widget/contact_number_edit_profile.widget.dart';
import 'package:upark_driver/features/edit_profile/widget/delete_account_button.dart';
import 'package:upark_driver/features/edit_profile/widget/first_name_edit_profile.widget.dart';
import 'package:upark_driver/features/edit_profile/widget/gender_edit_profile.widget.dart';
import 'package:upark_driver/features/edit_profile/widget/image_widget.dart';
import 'package:upark_driver/features/edit_profile/widget/last_name_edit_profile.widget.dart';
import 'package:upark_driver/features/edit_profile/widget/update_button.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonBackAppbar(
        textTitle: "Edit Profile",
        context: context,
        onTap: () => context.go("/bottomnav"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: largeSpacing),
          child: SingleChildScrollView(
            child: Column(
              spacing: largeSpacing,
              children: [
                ImageWidget(),
                FirstNameEditProfileWidget(),
                LastNameEditProfileWidget(),
                GenderEditProfileWidget(),
                ContactNumberEditProfileWidget(),
                UpdateButton(onTap: () {}),
                DeleteAccountButton(onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

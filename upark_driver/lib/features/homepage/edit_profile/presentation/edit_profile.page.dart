import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_back_appbar.dart';

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
        context: context,
        onTap: () => context.go("/login"),
      ),
      body: Column(
        children: [
          Container(
            width: 116,
            height: 110,
            decoration: BoxDecoration(
              color: greySecondary,
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(Assets.editProfileImage),
                  fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}

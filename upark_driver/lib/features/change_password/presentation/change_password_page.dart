import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_back_appbar.dart';
import 'package:upark_driver/core/widget/common_button.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';
import 'package:upark_driver/features/change_password/widget/common_change_password_textfield.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonBackAppbar(
        textTitle: "Change Password",
        onTap: () => context.go("/login"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: largeSpacing, right: largeSpacing),
        child: Column(
          spacing: regularSpacing,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonTextLabel(
              text: "Create new password",
              fontWeight: FontWeight.w500,
              fontSize: bigFontSizeTitle1,
              color: blackPrimary,
            ),
            CommonTextLabel(
              text:
                  "Your new password must be different\nfrom previous used password.",
              fontWeight: FontWeight.w400,
              fontSize: fontSizeTitle2,
              color: greyQuinary,
              textAlign: TextAlign.left,
            ),
            CommonChangePasswordTextfield(labelText: "New Password"),
            CommonChangePasswordTextfield(labelText: "Confirm Password"),
            SizedBox(height: extraLargeSpacing),
            Row(
              children: [
                Expanded(
                  child: CommonButton(
                    borderRadius: 10,
                    foregroundColor: whitePrimary,
                    backgroundColor: greenPrimary,
                    onPressed: () {},
                    child: CommonTextLabel(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600,
                      fontSize: fontSizeCallout,
                      color: whitePrimary, //
                      text: "Login",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

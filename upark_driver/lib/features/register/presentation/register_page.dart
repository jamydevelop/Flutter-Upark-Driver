import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/register/widget/button/back_to_screen_button.widget.dart';
import 'package:upark_driver/features/register/widget/text_label/create_account_text_label.widget.dart';
import 'package:upark_driver/features/register/widget/text_label/first_name_text_label.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/first_name_textfield.widget.dart';
import 'package:upark_driver/features/register/widget/text_label/profile_image_text_label.widget.dart';
import 'package:upark_driver/features/register/widget/button/upload_image_button.widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                BackToScreenButtonWidget(),
                CreateAccountTextLabelWidget(),
                SizedBox(height: regularSpacing),
                // Profile Image "Text Title"
                ProfileImageTextLabelWidget(),
                SizedBox(height: extraSmallSpacing),
                //Upload Image "Button"
                UploadImageButtonWidget(),
                SizedBox(height: regularSpacing),
                FirstNameTextLabelWidget(),
                SizedBox(height: extraSmallSpacing),
                FirstNameTextfieldWidget(),
                //First Name "Text Title"
                //First Name "Text Field"
                //Last Name "Text Title"
                //Last Name "Text Field"
                //Gender "Text Title"
                // Male or Female "Checkbox"
              ],
            ),
          ),
        ),
      ),
    );
  }
}

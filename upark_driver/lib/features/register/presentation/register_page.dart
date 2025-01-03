import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/register/widget/button/back_to_screen_button.widget.dart';
import 'package:upark_driver/features/register/widget/button/vehicle_type_button.widget.dart';
import 'package:upark_driver/features/register/widget/register_gender_selection.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/register_contact_number_textfield.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/register_last_name_textfield.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/register_first_name_textfield.widget.dart';
import 'package:upark_driver/features/register/widget/button/upload_image_button.widget.dart';
import 'package:upark_driver/features/register/widget/text_label/register_create_account_text_label.widget.dart';

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
              spacing: regularSpacing,
              children: <Widget>[
                SizedBox(height: regularSpacing),
                BackToScreenButtonWidget(),
                RegisterCreateAccountTextLabelWidget(),
                UploadImageButtonWidget(),
                RegisterFirstNameTextfieldWidget(),
                RegisterLastNameTextfieldWidget(),
                RegisterGenderSelectionWidget(),
                RegisterContactNumberTextfieldWidget(),
                VehicleTypeButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/register/widget/app_bar.widget.dart';
import 'package:upark_driver/features/register/widget/button/vehicle_type_button.widget.dart';
import 'package:upark_driver/features/register/widget/gender_selection.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/contact_number_textfield.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/last_name_textfield.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/first_name_textfield.widget.dart';
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
              spacing: regularSpacing,
              children: <Widget>[
                SizedBox(height: regularSpacing),
                AppBarWidget(),
                UploadImageButtonWidget(),
                FirstNameTextfieldWidget(),
                LastNameTextfieldWidget(),
                GenderSelectionWidget(),
                ContactNumberTextfieldWidget(),
                VehicleTypeButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

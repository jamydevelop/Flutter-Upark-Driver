import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/register/widget/button/back_to_screen_button.widget.dart';
import 'package:upark_driver/features/register/widget/button/vehicle_type_button.widget.dart';
import 'package:upark_driver/features/register/widget/gender_selection.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/contact_number_textfield.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/last_name_textfield.widget.dart';
import 'package:upark_driver/features/register/widget/text_label/contact_number_text_label.widget.dart';
import 'package:upark_driver/features/register/widget/text_label/create_account_text_label.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/first_name_textfield.widget.dart';
import 'package:upark_driver/features/register/widget/text_label/gender_text_label.widget.dart';
import 'package:upark_driver/features/register/widget/button/upload_image_button.widget.dart';
import 'package:upark_driver/features/register/widget/text_label/vehicle_type_text_label.widget.dart';

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
                UploadImageButtonWidget(),
                SizedBox(height: regularSpacing),
                FirstNameTextfieldWidget(),
                SizedBox(height: regularSpacing),
                LastNameTextfieldWidget(),
                SizedBox(height: regularSpacing),
                GenderTextLabelWidget(),
                GenderSelectionWidget(),
                ContactNumberTextLabelWidget(),
                SizedBox(height: extraSmallSpacing),
                ContactNumberTextfieldWidget(),
                SizedBox(height: regularSpacing),
                VehicleTypeTextLabelWidget(),
                SizedBox(height: extraSmallSpacing),
                VehicleTypeButtonWidget(),

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

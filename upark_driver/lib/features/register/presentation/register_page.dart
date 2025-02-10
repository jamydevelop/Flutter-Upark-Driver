import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_back_appbar.dart';
import 'package:upark_driver/features/register/widget/button/register_button.dart';
import 'package:upark_driver/features/register/widget/button/vehicle_type_button.register.dart';
import 'package:upark_driver/features/register/widget/gender_selection.register.dart';
import 'package:upark_driver/features/register/widget/text_field/confirm_password_textfield.register.dart';
import 'package:upark_driver/features/register/widget/text_field/contact_number_textfield.register.dart';
import 'package:upark_driver/features/register/widget/text_field/email_textfield.register.dart';
import 'package:upark_driver/features/register/widget/text_field/last_name_textfield.register.dart';
import 'package:upark_driver/features/register/widget/text_field/first_name_textfield.register.dart';
import 'package:upark_driver/features/register/widget/button/upload_image_button.register.dart';
import 'package:upark_driver/features/register/widget/text_field/password_textfield.register.dart';
import 'package:upark_driver/features/register/widget/text_field/plate_number_textfield.register.dart';
import 'package:upark_driver/features/register/widget/text_label/create_account_text_label.register.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? dropDownValue;

  void dropDownCallback({required String value}) {
    setState(() {
      dropDownValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonBackAppbar(
        onTap: () => context.go("/login"),
      ),
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
              CreateAccountTextLabelRegister(),
              UploadImageButtonRegister(),
              FirstNameTextfieldRegister(),
              LastNameTextfieldRegister(),
              GenderSelectionRegister(),
              ContactNumberTextfieldRegister(),
              VehicleTypeButtonRegister(dropDownCallback: dropDownCallback),
              dropDownValue == null
                  ? SizedBox.shrink()
                  : PlateNumberTextfieldRegister(value: dropDownValue ?? ""),
              EmailTextfieldRegister(),
              PasswordTextfieldRegister(),
              ConfirmPasswordTextfieldRegister(),
              RegisterButton()
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/register/widget/button/register_button.widget.dart';
import 'package:upark_driver/features/register/widget/button/vehicle_type_button.register.widget.dart';
import 'package:upark_driver/features/register/widget/gender_selection.register.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/confirm_password_textfield.register.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/contact_number_textfield.register.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/email_textfield.register.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/last_name_textfield.register.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/first_name_textfield.register.widget.dart';
import 'package:upark_driver/features/register/widget/button/upload_image_button.register.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/password_textfield.register.widget.dart';
import 'package:upark_driver/features/register/widget/text_field/plate_number_textfield.register.widget.dart';
import 'package:upark_driver/features/register/widget/text_label/create_account_text_label.register.widget.dart';

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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            context.go("/login");
          },
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
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
              //SizedBox(height: regularSpacing),
              //BackToScreenButtonRegisterWidget(),
              CreateAccountTextLabelRegisterWidget(),
              UploadImageButtonRegisterWidget(),
              FirstNameTextfieldRegisterWidget(),
              LastNameTextfieldRegisterWidget(),
              GenderSelectionRegisterWidget(),
              ContactNumberTextfieldRegisterWidget(),
              VehicleTypeButtonRegisterWidget(
                  dropDownCallback: dropDownCallback),
              dropDownValue == null
                  ? SizedBox.shrink()
                  : PlateNumberTextfieldRegisterWidget(
                      value: dropDownValue ?? ""),
              EmailTextfieldRegisterWidget(),
              PasswordTextfieldRegisterWidget(),
              ConfirmPasswordTextfieldRegisterWidget(),
              RegisterButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}

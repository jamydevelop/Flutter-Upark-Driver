import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/features/login/widget/text_label/password_text_label.login.widget.dart';

class ChangePasswordTextfield extends StatefulWidget {
  const ChangePasswordTextfield({super.key});

  @override
  State<ChangePasswordTextfield> createState() =>
      _ChangePasswordTextfieldState();
}

class _ChangePasswordTextfieldState extends State<ChangePasswordTextfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: extraSmallSpacing),
        LoginPasswordTextLabelWidget(),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          isSecure: true,
          hasShowHideTextIcon: true,
          maxLines: 1,
          hintText: "••••••••••",
          hintTextStyle: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w400,
            fontSize: fontSizeSubhead,
            color: greySecondary, //#868686
          ),
          prefixIcon: Image.asset(
            "assets/icons/key_fill_icon.png",
            scale: 3,
            color: greySecondary, //#868686
          ),
          // Icon(
          //   Icons.key_sharp,
          //   color: textFieldTextGrey,
          // ),
          onFieldSubmitted: (value) {
            // Hide the on-screen keyboard
            FocusScope.of(context).unfocus();
          },
          fillColor: Colors.white,
          filled: true,
          keyboardType: TextInputType.text,
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: greySecondary, width: 1),
          ),
        ),
      ],
    );
  }
}

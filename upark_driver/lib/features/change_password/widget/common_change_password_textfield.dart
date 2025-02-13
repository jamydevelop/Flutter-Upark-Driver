import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class CommonChangePasswordTextfield extends StatefulWidget {
  final String labelText;

  const CommonChangePasswordTextfield({super.key, required this.labelText});

  @override
  State<CommonChangePasswordTextfield> createState() =>
      _CommonChangePasswordTextfieldState();
}

class _CommonChangePasswordTextfieldState
    extends State<CommonChangePasswordTextfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: extraSmallSpacing),
        CommonTextLabel(
          fontWeight: FontWeight.w500,
          fontSize: fontSizeSubhead, //15px
          color: greyPrimary, //#7D7777
          text: widget.labelText,
        ),
        SizedBox(height: smallSpacing),
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
            Assets.changePasswordKeyIcon,
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

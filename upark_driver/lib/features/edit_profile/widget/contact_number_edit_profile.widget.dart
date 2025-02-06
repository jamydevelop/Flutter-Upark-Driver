import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ContactNumberEditProfileWidget extends StatelessWidget {
  const ContactNumberEditProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CommonTextLabel(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w500,
            fontSize: fontSizeTitle5, //15px
            color: blackPrimary,
            text: "Contact Number",
          ),
        ),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          hintText: "0915-794-4545",
          hintTextStyle: TextStyle(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w400,
            fontSize: fontSizeTitle5, //15px
            color: greySecondary, //#868686
          ),
          prefixIcon: Image.asset(
            "assets/icons/call_icon.png",
            scale: 3,
          ),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
          },
          inputBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(color: greySecondary, width: 1)),
        ),
      ],
    );
  }
}

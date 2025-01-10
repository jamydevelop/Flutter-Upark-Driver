import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_button.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';
import 'package:upark_driver/core/widget/custom_appbar.widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonTextLabel(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w500,
            fontSize: fontSizeTitle1, //25px
            color: blackPrimary,
            text: "Forgot\nPassword?",
          ),
          SizedBox(height: regularSpacing),
          CommonTextLabel(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w400,
            fontSize: fontSizeTitle4, //14px
            textAlign: TextAlign.center,
            color: greySecondary,
            text: "We can send you details on how to reset it.",
          ),
          CommonTextLabel(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w400,
            fontSize: fontSizeTitle4, //14px
            textAlign: TextAlign.center,
            color: greySecondary,
            text: "Please enter your email",
          ),
          CommonTextLabel(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: fontSizeSubhead, //15px
            color: greyPrimary, //#7D7777
            text: "Email",
          ),
          CommonTextField(
            hintText: "Email",
            hintTextStyle: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400,
                fontSize: fontSizeSubhead, //15px
                color: greySecondary), //#868686
            prefixIcon: Image.asset(
              "assets/icons/at_sign_icon.png",
              scale: 3,
              color: greySecondary, //#868686
            ),
            // Icon(
            //   Icons.alternate_email,
            //   color: textFieldTextGrey,
            // ),
            onFieldSubmitted: (value) {
              // Hide the on-screen keyboard
              FocusScope.of(context).unfocus();
            },
            keyboardType: TextInputType.emailAddress,
            inputBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(color: greySecondary, width: 1),
            ),
          ),
          CommonButton(
            borderRadius: 10,
            foregroundColor: whitePrimary,
            backgroundColor: greenPrimary,
            child: CommonTextLabel(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600,
              fontSize: fontSizeCallout,
              color: whitePrimary, //
              text: "Login",
            ),
            onPressed: () {
              debugPrint("Login Button Pressed!");
            },
          ),
        ],
      ),
    );
  }
}

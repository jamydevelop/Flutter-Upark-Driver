import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ForgotPasswordTextLabelLoginWidget extends StatefulWidget {
  const ForgotPasswordTextLabelLoginWidget({super.key});

  @override
  ForgotPasswordTextLabelLoginWidgetState createState() =>
      ForgotPasswordTextLabelLoginWidgetState();
}

class ForgotPasswordTextLabelLoginWidgetState
    extends State<ForgotPasswordTextLabelLoginWidget> {
  // This variable holds the color that changes when tapped
  Color textColor = greenPrimary; // Initially, it is greenPrimary

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              // Change the color to red when tapped
              textColor = greyPrimary;
            });
          },
          child: CommonTextLabel(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w600,
            fontSize: fontSizeCaption1, //12px
            color: textColor, // Use the dynamic color based on the state
            text: "Forgot Password?",
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ForgotPasswordTextLabelLoginWidget extends StatelessWidget {
  const ForgotPasswordTextLabelLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {},
          child: CommonTextLabel(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w600,
            fontSize: fontSizeCaption1, //12px
            color: greenPrimary, //#379237
            text: "Forgot Password",
          ),
        ),
      ],
    );
  }
}

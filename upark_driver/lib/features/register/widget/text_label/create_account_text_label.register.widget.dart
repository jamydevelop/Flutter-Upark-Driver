import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class CreateAccountTextLabelRegisterWidget extends StatelessWidget {
  const CreateAccountTextLabelRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CommonTextLabel(
      fontFamily: "Roboto",
      fontWeight: FontWeight.w600,
      fontSize: fontSizeTitle1,
      color: blackPrimary,
      text: "Create Account",
    ));
  }
}

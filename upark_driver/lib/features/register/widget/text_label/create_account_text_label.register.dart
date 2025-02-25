import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class CreateAccountTextLabelRegister extends StatelessWidget {
  const CreateAccountTextLabelRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CommonTextLabel(
      fontFamily: "Roboto",
      fontWeight: FontWeight.w600,
      fontSize: bigFontSizeTitle1, //25px
      color: blackPrimary, //#0B0B0B
      text: "Create Account",
    ));
  }
}

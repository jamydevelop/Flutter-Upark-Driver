import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class GenderTextLabelRegister extends StatelessWidget {
  const GenderTextLabelRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CommonTextLabel(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: fontSizeTitle4, //14px
          color: greyPrimary, //#7D7777
          text: "Gender",
        )
      ],
    );
  }
}

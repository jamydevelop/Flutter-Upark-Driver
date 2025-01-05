import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class GenderTextLabelRegisterWidget extends StatelessWidget {
  const GenderTextLabelRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CommonTextLabel(
          color: textFieldTextGrey,
          text: "Gender",
          fontSize: fontSizeTitle4,
        )
      ],
    );
  }
}

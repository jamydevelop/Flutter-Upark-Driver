import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class GenderTextLabelWidget extends StatelessWidget {
  const GenderTextLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CommonTextLabel(
          color: grey,
          text: "Gender",
          fontSize: fontSizeTitle4,
        )
      ],
    );
  }
}

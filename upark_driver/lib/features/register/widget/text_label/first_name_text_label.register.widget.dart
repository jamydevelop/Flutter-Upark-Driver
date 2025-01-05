import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class FirstNameTextLabelRegisterWidget extends StatelessWidget {
  const FirstNameTextLabelRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CommonTextLabel(
          color: greySecondary,
          text: "First Name",
          fontSize: fontSizeTitle4,
        ),
      ],
    );
  }
}

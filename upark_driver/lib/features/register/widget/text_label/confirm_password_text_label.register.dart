import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ConfirmPasswordTextLabelRegister extends StatelessWidget {
  const ConfirmPasswordTextLabelRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CommonTextLabel(
          text: "Confirm Password",
          color: greySecondary,
        ),
      ],
    );
  }
}

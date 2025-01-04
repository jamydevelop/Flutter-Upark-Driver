import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class PasswordTextLabelRegisterWidget extends StatelessWidget {
  const PasswordTextLabelRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CommonTextLabel(
          text: "Password",
          color: grey,
        ),
      ],
    );
  }
}

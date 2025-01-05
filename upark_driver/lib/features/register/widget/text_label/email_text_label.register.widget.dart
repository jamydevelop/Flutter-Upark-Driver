import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class EmailTextLabelRegisterWidget extends StatelessWidget {
  const EmailTextLabelRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CommonTextLabel(
          color: textFieldTextGrey,
          text: "Email",
        ),
      ],
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class LastNameTextLabelWidget extends StatelessWidget {
  const LastNameTextLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CommonTextLabel(
          color: grey,
          text: "Last Name",
          fontSize: fontSizeTitle4,
        ),
      ],
    );
  }
}
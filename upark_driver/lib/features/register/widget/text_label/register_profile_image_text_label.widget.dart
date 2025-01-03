import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class RegisterProfileImageTextLabelWidget extends StatelessWidget {
  const RegisterProfileImageTextLabelWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CommonTextLabel(
          color: grey,
          text: "Profile Image",
          fontSize: fontSizeTitle4,
        ),
      ],
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ProfileImageTextLabelRegisterWidget extends StatelessWidget {
  const ProfileImageTextLabelRegisterWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CommonTextLabel(
          color: textFieldTextGrey,
          text: "Profile Image",
          fontSize: fontSizeTitle4,
        ),
      ],
    );
  }
}

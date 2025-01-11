import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ProfileImageTextLabelRegister extends StatelessWidget {
  const ProfileImageTextLabelRegister({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CommonTextLabel(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: fontSizeSubhead, //15px
          color: greyPrimary, //#7D7777
          text: "Profile Image",
        ),
      ],
    );
  }
}

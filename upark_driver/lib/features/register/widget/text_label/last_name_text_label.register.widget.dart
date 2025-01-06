import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class LastNameTextLabelRegisterWidget extends StatelessWidget {
  const LastNameTextLabelRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CommonTextLabel(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: fontSizeTitle5, //15px
          color: greyPrimary, //#7D7777
          text: "Last Name",
        ),
      ],
    );
  }
}

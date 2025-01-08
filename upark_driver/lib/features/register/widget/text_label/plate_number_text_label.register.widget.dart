import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class PlateNumberTextLabelRegisterWidget extends StatelessWidget {
  const PlateNumberTextLabelRegisterWidget({super.key, required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CommonTextLabel(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: fontSizeTitle5, //px
          color: greyPrimary, //#7D7777
          text: "Plate # for $value",
        ),
      ],
    );
  }
}

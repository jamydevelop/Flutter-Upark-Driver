import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class PlateNumberTextLabelRegisterWidget extends StatelessWidget {
  const PlateNumberTextLabelRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CommonTextLabel(
          color: grey,
          text: "Plate # for Car",
        ),
      ],
    );
  }
}

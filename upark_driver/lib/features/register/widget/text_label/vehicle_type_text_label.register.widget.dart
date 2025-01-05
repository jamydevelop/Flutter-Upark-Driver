import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class VehicleTypeTextLabelRegisterWidget extends StatelessWidget {
  const VehicleTypeTextLabelRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CommonTextLabel(
          color: greySecondary,
          text: "Vehicle Type",
        ),
      ],
    );
  }
}

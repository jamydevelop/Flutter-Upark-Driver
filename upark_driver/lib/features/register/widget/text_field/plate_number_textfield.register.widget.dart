import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';
import 'package:upark_driver/features/register/widget/text_label/plate_number_text_label.register.widget.dart';

class PlateNumberTextfieldRegisterWidget extends StatelessWidget {
  const PlateNumberTextfieldRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlateNumberTextLabelRegisterWidget(),
        SizedBox(height: extraSmallSpacing),
        CommonTextField(
          hintText: "Plate #",
        )
      ],
    );
  }
}

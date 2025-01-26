import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class ReserveParkingTitle extends StatelessWidget {
  const ReserveParkingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextLabel(
      text: "Reserved Parking Space",
      fontWeight: FontWeight.w500,
      fontSize: fontSizeTitle6,
      color: blackPrimary,
    );
  }
}

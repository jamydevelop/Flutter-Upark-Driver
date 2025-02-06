// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class TitleWidget extends StatelessWidget {
  final String value; // Made final for immutability

  const TitleWidget({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CommonTextLabel(
        text: value, // Now uses the passed value
        fontWeight: FontWeight.w600,
        fontSize: fontSizeTitle8,
        color: greySecondary,
        textAlign: TextAlign.left, // Corrected textAlign
      ),
    );
  }
}

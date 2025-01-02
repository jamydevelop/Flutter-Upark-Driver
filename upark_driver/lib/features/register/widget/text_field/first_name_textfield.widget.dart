import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';

class FirstNameTextfieldWidget extends StatelessWidget {
  const FirstNameTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextField(
      hintText: "Enter your first name",
      hintTextStyle: TextStyle(color: grey),
      prefixIcon: Image.asset(
        "assets/images/profile.png",
        scale: 3,
      ),
      onFieldSubmitted: (value) {
        FocusScope.of(context).unfocus();
      },
    );
  }
}

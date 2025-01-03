import 'package:flutter/material.dart';
import 'package:upark_driver/core/widget/common_button.dart';

class BackToScreenButtonRegisterWidget extends StatelessWidget {
  const BackToScreenButtonRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CommonButton(
          height: 24,
          width: 24,
          borderRadius: 0,
          backgroundColor: WidgetStateColor.transparent,
          onPressed: () {},
          hasBorder: false,
          padding: EdgeInsets.zero,
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24,
          ),
          // Image.asset(
          //   "assets/images/arrow_back_icon.png",
          //   width: 24,
          //   height: 24,
          // ),
        ),
      ],
    );
  }
}

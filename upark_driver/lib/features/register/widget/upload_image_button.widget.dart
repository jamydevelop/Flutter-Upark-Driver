import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/widget/common_button.dart';

class UploadImageButtonWidget extends StatelessWidget {
  const UploadImageButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CommonButton(
            foregroundColor: darkGreen,
            backgroundColor: buttonGrey,
            child: Text(
              "Upload Image",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () => debugPrint("Upload Image Button Clicked!"),
          ),
        )
      ],
    );
  }
}

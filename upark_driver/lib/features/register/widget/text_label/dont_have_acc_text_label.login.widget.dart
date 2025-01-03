import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class DontHaveAccTextLabelLoginWidget extends StatelessWidget {
  const DontHaveAccTextLabelLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CommonTextLabel(
          color: grey,
          text: "Don't have an account?",
          fontSize: fontSizeTitle4,
        ),
      ],
    );
  }
}

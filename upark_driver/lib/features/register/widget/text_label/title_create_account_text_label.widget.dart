import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/dimensions.dart';

class TitleCreateAccountTextLabelWidget extends StatelessWidget {
  const TitleCreateAccountTextLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Create Account",
      style: TextStyle(
        fontSize: fontSizeTitle1,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
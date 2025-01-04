import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/dimensions.dart';

class CreateAccountTextLabelRegisterWidget extends StatelessWidget {
  const CreateAccountTextLabelRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Create Account",
        style: TextStyle(
          fontSize: fontSizeTitle1,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

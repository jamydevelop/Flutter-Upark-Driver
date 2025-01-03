import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/dimensions.dart';

<<<<<<<< HEAD:upark_driver/lib/features/register/widget/text_label/login_text_label.login.widget.dart
class LoginTextLabelLoginWidget extends StatelessWidget {
  const LoginTextLabelLoginWidget({super.key});
========
class RegisterCreateAccountTextLabelWidget extends StatelessWidget {
  const RegisterCreateAccountTextLabelWidget({super.key});
>>>>>>>> main:upark_driver/lib/features/register/widget/text_label/register_create_account_text_label.widget.dart

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

import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

<<<<<<<< HEAD:upark_driver/lib/features/register/widget/text_label/forgot_password_text_label.login.widget.dart
class ForgotPasswordTextLabelLoginWidget extends StatelessWidget {
  const ForgotPasswordTextLabelLoginWidget({super.key});
========
class RegisterProfileImageTextLabelWidget extends StatelessWidget {
  const RegisterProfileImageTextLabelWidget({super.key});
>>>>>>>> main:upark_driver/lib/features/register/widget/text_label/register_profile_image_text_label.widget.dart

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CommonTextLabel(
          color: grey,
          text: "Profile Image",
          fontSize: fontSizeTitle4,
        ),
      ],
    );
  }
}

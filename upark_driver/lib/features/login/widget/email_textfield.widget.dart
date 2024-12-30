import 'package:flutter/material.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';

class EmailTextFieldWidget extends StatelessWidget {
  const EmailTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextField(
      hintText: "Enter your email",
      prefixIcon: Icon(
        Icons.alternate_email,
        color: Colors.grey,
      ),
      onFieldSubmitted: (value) {
        // Hide the on-screen keyboard
        FocusScope.of(context).unfocus();
      },
      keyboardType: TextInputType.emailAddress,
      inputBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: Colors.grey.shade400),
      ),
      obscureText: false, // Email should always be visible
    );
  }
}

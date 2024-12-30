// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:upark_driver/core/widget/common_text_field.dart';

class PassworTextFielddWidget extends StatefulWidget {
  const PassworTextFielddWidget({super.key});

  @override
  _PassworTextFielddWidgetState createState() =>
      _PassworTextFielddWidgetState();
}

class _PassworTextFielddWidgetState extends State<PassworTextFielddWidget> {
  bool _isTextShown = false;

  @override
  Widget build(BuildContext context) {
    return CommonTextField(
      hintText: "Password",
      prefixIcon: Icon(
        Icons.key_sharp,
        color: Colors.grey,
      ),
      onFieldSubmitted: (value) {
        // Hide the on-screen keyboard
        FocusScope.of(context).unfocus();
      },
      suffixIcon: IconButton(
        icon: Icon(
          _isTextShown
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined,
          color: Colors.grey,
        ),
        onPressed: () {
          setState(() {
            _isTextShown = !_isTextShown; // Toggle visibility state
          });
        },
      ),
      obscureText: !_isTextShown, // If true, hides the text, otherwise shows it
      fillColor: Colors.white,
      filled: true,
      keyboardType: TextInputType.text,
      inputBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: Colors.grey.shade400),
      ),
    );
  }
}

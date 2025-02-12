import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_back_appbar.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonBackAppbar(
        onTap: () => context.go("/login"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: largeSpacing, right: largeSpacing),
        child: Column(
          spacing: regularSpacing,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}

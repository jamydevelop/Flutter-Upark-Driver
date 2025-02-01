import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_button.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class DeleteAccountButton extends StatelessWidget {
  final VoidCallback onTap;
  const DeleteAccountButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: superLargeSpacing),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CommonButton(
                borderRadius: 10,
                foregroundColor: whitePrimary,
                backgroundColor: redPrimary,
                onPressed: onTap,
                child: CommonTextLabel(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w600,
                  fontSize: fontSizeCallout,
                  color: whitePrimary, //
                  text: "Delete Account",
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

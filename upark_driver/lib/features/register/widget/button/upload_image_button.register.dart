import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_button.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';
import 'package:upark_driver/features/register/widget/text_label/profile_image_text_label.register.dart';

class UploadImageButtonRegister extends StatelessWidget {
  const UploadImageButtonRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileImageTextLabelRegister(),
        SizedBox(height: extraSmallSpacing),
        Row(
          children: [
            Expanded(
              child: CommonButton(
                height: 58,
                foregroundColor: greenPrimary,
                backgroundColor: greyTertiary,
                borderRadius: primaryBorder,
                child: CommonTextLabel(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: fontSizeTitle4,
                  text: "Upload Image",
                ),
                onPressed: () => debugPrint("Upload Image Button Clicked!"),
              ),
            )
          ],
        ),
      ],
    );
  }
}

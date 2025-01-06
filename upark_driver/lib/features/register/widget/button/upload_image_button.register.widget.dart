import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_button.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';
import 'package:upark_driver/features/register/widget/text_label/profile_image_text_label.register.widget.dart';

class UploadImageButtonRegisterWidget extends StatelessWidget {
  const UploadImageButtonRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileImageTextLabelRegisterWidget(),
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

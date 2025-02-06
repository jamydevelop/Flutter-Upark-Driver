import 'package:flutter/widgets.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/colors.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 116,
      height: 110,
      decoration: BoxDecoration(
        color: greySecondary,
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(Assets.editProfileImage), fit: BoxFit.cover),
      ),
    );
  }
}

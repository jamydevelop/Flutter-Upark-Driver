import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/assets.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/core/widget/common_text_label.dart';

class CommonNotificationCard extends StatefulWidget {
  final String headerText;
  final String subText;
  final String dateAndTime;
  final String imagePath;
  const CommonNotificationCard(
      {super.key,
      required this.headerText,
      required this.subText,
      required this.dateAndTime,
      required this.imagePath});

  @override
  State<CommonNotificationCard> createState() => _CommonNotificationCardState();
}

class _CommonNotificationCardState extends State<CommonNotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: largeSpacing, vertical: smallSpacing),
      width: double.infinity,
      height: 77,
      decoration: BoxDecoration(
        color: notifUnreadBackground,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          imageContainer(),
          SizedBox(width: normalSpacing),
          notifInfo(),
        ],
      ),
    );
  }

  Widget imageContainer() {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: greyPrimary,
          image: DecorationImage(
            image: AssetImage(widget.imagePath),
          )),
    );
  }

  Widget notifInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonTextLabel(
                text: widget.headerText,
                fontWeight: FontWeight.w500,
                fontSize: fontSizeTitle5,
                color: blackSecondary,
              ),
              SizedBox(height: extraSmallSpacing),
              Spacer(),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: greenPrimary,
                ),
              )
            ],
          ),
          CommonTextLabel(
            text: widget.subText,
            fontWeight: FontWeight.w600,
            fontSize: fontSizeTitle2,
            color: notifSubText,
          ),
          SizedBox(height: extraSmallSpacing),
          CommonTextLabel(
            text: widget.dateAndTime,
            fontWeight: FontWeight.w600,
            fontSize: fontSizeTitle2,
            color: greySecondary,
          )
        ],
      ),
    );
  }
}

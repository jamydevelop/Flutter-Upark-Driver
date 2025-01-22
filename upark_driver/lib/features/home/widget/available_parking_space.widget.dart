import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';

class AvailableParkingSpaceWidget extends StatelessWidget {
  const AvailableParkingSpaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 133,
      height: 169,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: whitePrimary,
        border: Border.all(
          color: greyTertiary,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 133,
                height: 87,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  color: Colors.pink,
                ),
                child: Image.asset(
                  "assets/images/parking_image.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';

class ApprovedCardWidget extends StatelessWidget {
  const ApprovedCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 163,
      decoration: BoxDecoration(
        color: whitePrimary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 1,
          color: greyPrimary,
        ),
      ),
    );
  }
}



// PLAIN CONTAINER


// Container(
//       height: 163,
//       decoration: BoxDecoration(
//         color: whitePrimary,
//         borderRadius: BorderRadius.circular(16),
//         border: Border.all(
//           width: 1,
//           color: greyPrimary,
//         ),
//       ),
//     );
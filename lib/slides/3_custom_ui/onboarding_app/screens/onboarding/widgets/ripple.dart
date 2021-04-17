import 'package:flutter/material.dart';

import '../../../constants.dart';

class Ripple extends StatelessWidget {
  final double screenWidth;
  final double radius;

  const Ripple({
    required this.screenWidth,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenWidth / 2 - radius,
      bottom: 2 * kPaddingL - radius,
      child: Container(
        width: 2 * radius,
        height: 2 * radius,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: kWhite,
        ),
      ),
    );
  }
}

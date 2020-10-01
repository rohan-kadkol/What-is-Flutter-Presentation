import 'package:flutter/material.dart';

import 'package:flutter_week_1/constants.dart';

class PhoneFrame extends StatelessWidget {
  final String image;

  const PhoneFrame({
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    double multiplier = 1.2;

    return Container(
      width: 360.0 * multiplier,
      height: 576.0 * multiplier,
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(image ?? ''),
      ),
    );
  }
}

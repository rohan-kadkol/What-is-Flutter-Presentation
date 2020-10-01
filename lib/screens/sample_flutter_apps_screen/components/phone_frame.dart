import 'package:flutter/material.dart';

import 'package:flutter_week_1/constants.dart';

class PhoneFrame extends StatelessWidget {
  final String image;
  final Widget child;
  final double height;
  final double width;

  const PhoneFrame({this.image, this.child, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    double multiplier = 1.2;

    return Container(
      width: width ?? 360.0 * multiplier,
      height: height ?? 576.0 * multiplier,
      child: child != null
          ? Builder(builder: (BuildContext context) {
              print(MediaQuery.of(context).size.width);
              return child;
            })
          : Image(
              fit: BoxFit.contain,
              image: AssetImage(image ?? ''),
            ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomFlutterLogo extends StatelessWidget {
  final double size;
  final String heroTag;

  const CustomFlutterLogo({this.size, this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag ?? 'assets/images/flutter.png',
      child: FlutterLogo(size: size ?? 250.0,),
    );
  }
}

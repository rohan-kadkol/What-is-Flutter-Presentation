import 'package:flutter/material.dart';
import 'package:flutter_week_1/constants.dart';
import 'package:flutter_week_1/widgets/custom_flutter_logo.dart';
import 'package:flutter_week_1/widgets/default_screen.dart';

class WhatIsFlutterScreen extends StatelessWidget {
  static final String routeName = '/what_is_flutter';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomFlutterLogo(),
          const SizedBox(
            height: kDefaultMargin * 2,
          ),
          Text(
            'What is Flutter?',
            style: kTitleStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: kDefaultMargin * 2,
          ),
        ],
      ),
    );
  }
}

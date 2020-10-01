import 'package:flutter/material.dart';
import 'package:flutter_week_1/blocs/slides_bloc.dart';
import 'package:flutter_week_1/constants.dart';
import 'package:flutter_week_1/widgets/custom_flutter_logo.dart';
import 'package:flutter_week_1/widgets/default_screen.dart';
import 'package:provider/provider.dart';

class WhatIsFlutterScreen extends StatelessWidget {
  static final String routeName = '/what_is_flutter';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      onTap: () =>
          Provider.of<SlidesBloc>(context, listen: false).nextSlide(context),
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

import 'package:flutter/material.dart';
import 'package:flutter_week_1/blocs/slides_bloc.dart';
import 'package:flutter_week_1/constants.dart';
import 'package:flutter_week_1/widgets/default_screen.dart';
import 'package:provider/provider.dart';

import '../../widgets/custom_flutter_logo.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      onTap: () =>
          Provider.of<SlidesBloc>(context, listen: false).nextSlide(context),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlutterLogo(),
            const SizedBox(height: kDefaultMargin * 3),
            Text(
              "Beginners' guide to Flutter Development",
              style: kTitleStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: kDefaultMargin * 2),
            Text(
              'All the way from the basics, to the advanced level',
              style: kSubtitleStyle,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

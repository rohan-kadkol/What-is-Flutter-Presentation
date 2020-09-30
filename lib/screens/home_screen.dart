import 'package:flutter/material.dart';
import 'package:flutter_week_1/constants.dart';
import 'package:flutter_week_1/widgets/default_screen.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/flutter.png'),
              height: 300.0,
              width: 300.0,
            ),
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

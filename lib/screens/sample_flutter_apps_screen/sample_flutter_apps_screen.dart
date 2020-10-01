import 'package:flutter/material.dart';
import 'package:flutter_week_1/screens/sample_flutter_apps_screen/components/phone_frame.dart';
import 'package:flutter_week_1/widgets/default_screen.dart';

class SampleFlutterAppsScreen extends StatelessWidget {
  static final String routeName = '/sample_flutter_apps';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PhoneFrame(image: 'assets/images/image1.gif'),
          PhoneFrame(image: 'assets/images/image2.gif'),
          PhoneFrame(image: 'assets/images/image3.gif'),
          PhoneFrame(image: 'assets/images/image4.png'),
        ],
      ),
    );
  }
}

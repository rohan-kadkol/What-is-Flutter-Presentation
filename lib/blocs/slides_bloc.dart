import 'package:flutter/cupertino.dart';
import 'package:flutter_week_1/screens/dog_breeds_app_screen/dog_breeds_app_screen.dart';
import 'package:flutter_week_1/screens/home_screen/home_screen.dart';
import 'package:flutter_week_1/screens/isa_app_screen/isa_app_screen.dart';
import 'package:flutter_week_1/screens/sample_flutter_apps_screen/sample_flutter_apps_screen.dart';
import 'package:flutter_week_1/screens/what_is_flutter_screen/what_is_flutter_screen.dart';

class SlidesBloc extends ChangeNotifier {
  List<String> slides = [
    HomeScreen.routeName,
    WhatIsFlutterScreen.routeName,
    SampleFlutterAppsScreen.routeName,
    IsaAppScreen.routeName,
    DogBreedsAppScreen.routeName
  ];

  int currentSlide = 0;

  nextSlide(BuildContext context, {Object arguments}) {
    if (currentSlide >= slides.length - 1) {
      return;
    }

    currentSlide++;
    Navigator.pushNamed(context, slides[currentSlide], arguments: arguments);
  }

  previousSlide(BuildContext context, {Object arguments}) {
    if (currentSlide < 0) {
      return;
    }

    currentSlide--;
    Navigator.pushNamed(context, slides[currentSlide], arguments: arguments);
  }

  bool canPreviousSlide() {
    return currentSlide > 0;
  }
}

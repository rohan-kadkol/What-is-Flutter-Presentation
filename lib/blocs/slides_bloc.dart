import 'package:flutter/cupertino.dart';
import 'package:flutter_week_1/screens/home_screen.dart';

class SlidesBloc extends ChangeNotifier {
  List<String> slides = [HomeScreen.routeName];

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
}

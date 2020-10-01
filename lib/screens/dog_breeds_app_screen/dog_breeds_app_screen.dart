import 'package:flutter/material.dart';
import 'package:flutter_week_1/widgets/default_screen.dart';

import 'package:dog_breeds_app/main.dart' as dog;

class DogBreedsAppScreen extends StatelessWidget {
  static final String routeName = '/dog_breeds_app_screen';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      child: dog.MyApp(),
    );
  }
}
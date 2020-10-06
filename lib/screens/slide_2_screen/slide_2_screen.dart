import 'package:flutter/material.dart';
import 'package:flutter_week_1/blocs/slides_bloc.dart';
import 'package:flutter_week_1/widgets/default_screen.dart';
import 'package:provider/provider.dart';

class Slide2Screen extends StatelessWidget {
  static final String routeName = '/slide_2_screen';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      onTap: () =>
          Provider.of<SlidesBloc>(context, listen: false).nextSlide(context),
      child: Hero(
        tag: 'slide',
        child: Container(
          child: Image(
            image: AssetImage('assets/images/slide_2.jpg'),
          ),
        ),
      ),
    );
  }
}

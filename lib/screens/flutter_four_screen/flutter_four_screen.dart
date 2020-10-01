import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_week_1/blocs/slides_bloc.dart';
import 'package:flutter_week_1/constants.dart';
import 'package:flutter_week_1/widgets/default_screen.dart';

class FlutterFourScreen extends StatefulWidget {
  static final String routeName = '/flutter_four_screen';

  final Size size;

  const FlutterFourScreen({
    this.size,
  });

  @override
  _FlutterFourScreenState createState() => _FlutterFourScreenState();
}

class _FlutterFourScreenState extends State<FlutterFourScreen> {
  final Duration duration = Duration(milliseconds: 800);

  final double height = 1800;
  final double width = 1800;

  List<_Pair> pairs = [
    _Pair(height: 1800, width: 1800),
    _Pair(height: 0, width: 0)
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    print(size.height);
    print(size.width);

    return DefaultScreen(
      onTap: () =>
          Provider.of<SlidesBloc>(context, listen: false).nextSlide(context),
      child: Container(
        child: Table(
          children: [
            TableRow(
              children: [
                AnimatedContainer(
                  duration: duration,
                  color: Colors.red,
                  width: pairs[0].width,
                  height: pairs[0].height,
                  child: Text(
                    'Fast',
                    style: kTitleStyle,
                  ),
                ),
                AnimatedContainer(
                  duration: duration,
                  color: Colors.blue,
                  width: pairs[1].width,
                  height: pairs[1].height,
                  child: Text(
                    'Content',
                    style: kTitleStyle,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _Pair {
  double height;
  double width;

  _Pair({
    this.height,
    this.width,
  });
}

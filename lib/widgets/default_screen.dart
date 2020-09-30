import 'package:flutter/material.dart';
import 'package:flutter_week_1/blocs/slides_bloc.dart';
import 'package:provider/provider.dart';

import 'top_bar.dart';

class DefaultScreen extends StatelessWidget {
  final Widget child;
  final Function onTap;

  const DefaultScreen({this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool canPreviousSlide = Provider.of<SlidesBloc>(context, listen: false).canPreviousSlide();
        if (canPreviousSlide) {
          Provider.of<SlidesBloc>(context, listen: false).currentSlide--;
        }
        return canPreviousSlide;
      },
      child: Scaffold(
        body: GestureDetector(
          onTap: onTap,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Hero(tag: 'top_bar', child: TopBar()),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: child,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

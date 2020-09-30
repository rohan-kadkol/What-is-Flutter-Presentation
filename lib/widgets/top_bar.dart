import 'package:flutter/material.dart';

import 'package:flutter_week_1/constants.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kTopBarHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _ColoredBar(
            color: kGoogleYellow,
          ),
          _ColoredBar(
            color: kGoogleGreen,
          ),
          _ColoredBar(
            color: kGoogleBlue,
          ),
          _ColoredBar(
            color: kGoogleRed,
          ),
        ],
      ),
    );
  }
}

class _ColoredBar extends StatelessWidget {
  final Color color;

  const _ColoredBar({
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
      ),
    );
  }
}

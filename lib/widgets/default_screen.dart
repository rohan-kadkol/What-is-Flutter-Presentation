import 'package:flutter/material.dart';

import 'top_bar.dart';

class DefaultScreen extends StatelessWidget {
  final Widget child;

  const DefaultScreen({this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TopBar(),
            Expanded(
              child: Container(
                color: Colors.white,
                child: child,
              ),
            )
          ],
        ),
      ),
    );
  }
}

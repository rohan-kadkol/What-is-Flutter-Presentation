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
          children: [
            TopBar(),
            Expanded(
              child: Container(
                child: child,
              ),
            )
          ],
        ),
      ),
    );
  }
}

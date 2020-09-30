import 'package:flutter/material.dart';

import 'top_bar.dart';

class DefaultScreen extends StatelessWidget {
  final Widget child;
  final Function onTap;

  const DefaultScreen({this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: onTap,
        child: Container(
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
      ),
    );
  }
}

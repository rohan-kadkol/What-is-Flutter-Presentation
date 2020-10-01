import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_week_1/blocs/slides_bloc.dart';
import 'package:flutter_week_1/widgets/default_screen.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';

class FlutterDescription1 extends StatefulWidget {
  static final String routeName = '/flutter_description_1';

  @override
  _FlutterDescription1State createState() => _FlutterDescription1State();
}

class _FlutterDescription1State extends State<FlutterDescription1>
    with AfterLayoutMixin<FlutterDescription1> {
  int currentState = 0;
  double height = 934.0;
  double width = 1920.0;

  List<Dimension> heightsWidths = [
    Dimension(height: 934.0, width: 1920.0),
    Dimension(height: 934.0, width: 0.0),
    Dimension(height: 0.0, width: 1920),
    Dimension(height: 0.0, width: 0.0),
  ];

  _cycleClickEvents() {
    print('HERE');
    currentState++;
    switch (currentState) {
      case 0:
        print(0);
        heightsWidths = [
          Dimension(height: height, width: width),
          Dimension(height: height, width: 0.0),
          Dimension(height: 0.0, width: width),
          Dimension(height: 0.0, width: 0.0),
        ];
        break;
      case 1:
        print(1);
        heightsWidths = [
          Dimension(height: height, width: width / 2),
          Dimension(height: height, width: width / 2),
          Dimension(height: 0.0, width: width),
          Dimension(height: 0.0, width: 0.0),
        ];
        break;
      case 2:
        print(2);
        heightsWidths = [
          Dimension(height: height / 2, width: width / 2),
          Dimension(height: height / 2, width: width / 2),
          Dimension(height: height / 2, width: width),
          Dimension(height: height / 2, width: 0.0),
        ];
        break;
      case 3:
        print(3);
        heightsWidths = [
          Dimension(height: height / 2, width: width / 2),
          Dimension(height: height / 2, width: width / 2),
          Dimension(height: height / 2, width: width / 2),
          Dimension(height: height / 2, width: width / 2),
        ];
        break;
      case 4:
        print(4);
        Provider.of<SlidesBloc>(context, listen: false).nextSlide(context);
    }
    setState(() {});
  }

  @override
  void afterFirstLayout(BuildContext context) {
    height = MediaQuery.of(context).size.height - 35.0;
    width = MediaQuery.of(context).size.width;

    setState(() {
      heightsWidths = [
        Dimension(height: height, width: width),
        Dimension(height: height, width: 0.0),
        Dimension(height: 0.0, width: 0.0),
        Dimension(height: 0.0, width: 0.0),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      onTap: _cycleClickEvents,
      child: Column(
        children: [
          AnimatedContainer(
            curve: kDefaultCurve,
            height: heightsWidths[0].height,
            width: heightsWidths[0].width + heightsWidths[1].width,
            duration: kDefaultDuration,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _ColoredTile(
                  height: heightsWidths[0].height,
                  width: heightsWidths[0].width,
                  text: 'Cross Platform',
                  color: kGoogleBlue.withOpacity(.1),
                ),
                _ColoredTile(
                  height: heightsWidths[1].height,
                  width: heightsWidths[1].width,
                  text: 'Freedom of Development Environment',
                  color: kGoogleRed.withOpacity(.1),
                )
              ],
            ),
          ),
          AnimatedContainer(
            curve: kDefaultCurve,
            height: heightsWidths[2].height,
            width: heightsWidths[2].width + heightsWidths[3].width,
            duration: kDefaultDuration,
            child: Row(
              children: [
                _ColoredTile(
                  height: heightsWidths[2].height,
                  width: heightsWidths[2].width,
                  text: 'Quick',
                  color: kGoogleGreen.withOpacity(.1),
                ),
                _ColoredTile(
                  height: heightsWidths[3].height,
                  width: heightsWidths[3].width,
                  text: 'Easy',
                  color: kGoogleYellow.withOpacity(.1),
                )
              ],
            ),
          )
        ],
      ),
    );

    // return DefaultScreen(
    //   child: Table(
    //     children: [
    //       TableRow(
    //         children: [
    //           _ColoredTile(
    //             text: 'Cross Platform',
    //             color: kGoogleBlue.withOpacity(.1),
    //             isVisible: true,
    //           )
    //         ],
    //       )
    //     ],
    //   ),
    // );

    // return DefaultScreen(
    //   onTap: _cycleClickEvents(),
    //   child: Column(
    //     children: [
    //       Expanded(
    //         child: Row(
    //           children: [
    //             _ColoredTile(
    //               text: 'Cross Platform',
    //               color: kGoogleBlue.withOpacity(.1),
    //               isVisible: isVisibles[0],
    //             ),
    //             _ColoredTile(
    //               text: 'Freedom of Development Environment',
    //               color: kGoogleRed.withOpacity(.1),
    //               isVisible: isVisibles[1],
    //             )
    //           ],
    //         ),
    //       ),
    //       Expanded(
    //         child: Row(
    //           children: [
    //             _ColoredTile(
    //               text: 'Quick',
    //               color: kGoogleGreen.withOpacity(.1),
    //               isVisible: isVisibles[2],
    //             ),
    //             _ColoredTile(
    //               text: 'Easy',
    //               color: kGoogleYellow.withOpacity(.1),
    //               isVisible: isVisibles[3],
    //             )
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}

class _ColoredTile extends StatefulWidget {
  final String text;
  final Color color;
  final double height;
  final double width;

  const _ColoredTile(
      {@required this.text, this.color, this.height, this.width});

  @override
  __ColoredTileState createState() => __ColoredTileState();
}

class __ColoredTileState extends State<_ColoredTile> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: kDefaultCurve,
      height: widget.height,
      width: widget.width,
      color: widget.color,
      duration: kDefaultDuration,
      child: Center(
        child: Text(
          widget.text,
          style: kTitleStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class Dimension {
  double height;
  double width;

  Dimension({
    this.height,
    this.width,
  });
}

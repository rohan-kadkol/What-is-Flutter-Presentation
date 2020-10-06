import 'package:flutter/material.dart';
import 'package:flutter_week_1/blocs/slides_bloc.dart';
import 'package:flutter_week_1/screens/dog_breeds_app_screen/dog_breeds_app_screen.dart';
import 'package:flutter_week_1/screens/flutter_description_4/flutter_description_1.dart';
import 'package:flutter_week_1/screens/flutter_four_screen/flutter_four_screen.dart';
import 'package:flutter_week_1/screens/isa_app_screen/isa_app_screen.dart';
import 'package:flutter_week_1/screens/sample_flutter_apps_screen/sample_flutter_apps_screen.dart';
import 'package:flutter_week_1/screens/slide_1_screen/slide_1_screen.dart';
import 'package:flutter_week_1/screens/what_is_flutter_screen/what_is_flutter_screen.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen/home_screen.dart';
import 'screens/slide_2_screen/slide_2_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: SlidesBloc(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Week 1',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          WhatIsFlutterScreen.routeName: (context) => WhatIsFlutterScreen(),
          SampleFlutterAppsScreen.routeName: (context) =>
              SampleFlutterAppsScreen(),
          IsaAppScreen.routeName: (context) => IsaAppScreen(),
          DogBreedsAppScreen.routeName: (context) => DogBreedsAppScreen(),
          FlutterFourScreen.routeName: (context) => FlutterFourScreen(),
          FlutterDescription1.routeName: (context) => FlutterDescription1(),
          Slide1Screen.routeName: (context)=>Slide1Screen(),
          Slide2Screen.routeName: (context)=>Slide2Screen(),
        },
        // onGenerateRoute: (RouteSettings settings) {
        //   var routes = <String, WidgetBuilder>{
        //     HomeScreen.routeName: (context) => HomeScreen(),
        //     WhatIsFlutterScreen.routeName: (context) => WhatIsFlutterScreen(),
        //     SampleFlutterAppsScreen.routeName: (context) =>
        //         SampleFlutterAppsScreen(),
        //     IsaAppScreen.routeName: (context) => IsaAppScreen(),
        //     DogBreedsAppScreen.routeName: (context) => DogBreedsAppScreen(),
        //     FlutterFourScreen.routeName: (context) => FlutterFourScreen(
        //           size: settings.arguments,
        //         )
        //   };

        //   WidgetBuilder builder = routes[settings.name];
        //   return MaterialPageRoute(settings: settings, builder: (ctx) => builder(ctx));
        // },
      ),
    );
  }
}

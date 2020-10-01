import 'package:flutter/material.dart';
import 'package:flutter_week_1/blocs/slides_bloc.dart';
import 'package:flutter_week_1/screens/sample_flutter_apps_screen/components/phone_frame.dart';
import 'package:flutter_week_1/widgets/default_screen.dart';

import 'package:isa_app/main.dart' as isa;
import 'package:dog_breeds_app/main.dart' as dog;
import 'package:provider/provider.dart';

class IsaAppScreen extends StatelessWidget {
  static final String routeName = '/isa_app_screen';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      onTap: () => Provider.of<SlidesBloc>(context, listen: false).nextSlide(context),
      child: isa.MyApp(),
    );
  }
}

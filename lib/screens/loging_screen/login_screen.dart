import 'package:flutter/material.dart';
import 'package:snapix_test_app/config/config.dart';

import 'package:snapix_test_app/widgets/widgets.dart';

class LogingScreen extends StatelessWidget {
  static String id = 'loging_screen';
  const LogingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          LogoContainer(title: 'Loging'),
          Content(
            screenDefiner: ScreenDefiner.loging,
            btnTitle: 'Войти',
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:snapix_test_app/config/config.dart';

import 'package:snapix_test_app/widgets/widgets.dart';

class RegistrationScreen extends StatelessWidget {
  static String id = 'registration_screen';
  const RegistrationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          LogoContainer(title: 'Registration'),
          Content(
            screenDefiner: ScreenDefiner.reg,
            btnTitle: 'Зарегестрироваться',
          ),
        ],
      )),
    );
  }
}

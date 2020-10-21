import 'package:flutter/material.dart';
import 'package:snapix_test_app/config/config.dart';
import 'package:snapix_test_app/config/screenDefiner.dart';
import 'package:snapix_test_app/widgets/widgets.dart';

class Content extends StatelessWidget {
  const Content({
    Key key,
    this.btnTitle,
    this.screenDefiner,
  }) : super(key: key);

  final String btnTitle;
  final ScreenDefiner screenDefiner;

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: defaultSize * 3, vertical: defaultSize * 5),
        color: Colors.white,
        height: SizeConfig.blockSizeHorizontal * 91,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFieldHolder(
              title: 'Loging',
            ),
            TextFieldHolder(
              title: 'Password',
            ),
            SizedBox(height: defaultSize * 3),
            LogRegBtns(title: btnTitle),
            screenDefiner == ScreenDefiner.loging
                ? NewUser()
                : SizedBox.shrink()
          ],
        ));
  }
}

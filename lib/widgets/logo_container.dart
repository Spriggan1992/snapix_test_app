import 'package:flutter/material.dart';
import 'package:snapix_test_app/config/config.dart';
import 'package:snapix_test_app/design/theme.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return Flexible(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: DesignTheme.colors.logoBackgroundGradient,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 1]),
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(defaultSize * 8))),
            height: SizeConfig.blockSizeHorizontal * 60,
          ),
          CircleAvatar(
            maxRadius: defaultSize * 4,
            backgroundImage: AssetImage('assets/images/logo.jpg'),
          ),
          Positioned(
            top: defaultSize * 20,
            left: defaultSize * 22,
            child: Container(child: Text(title, style: DesignTheme.text.title)),
          )
        ],
      ),
    );
  }
}

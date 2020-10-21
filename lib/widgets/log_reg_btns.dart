import 'package:flutter/material.dart';
import 'package:snapix_test_app/config/config.dart';
import 'package:snapix_test_app/design/theme.dart';
import 'package:snapix_test_app/screens/note_screen/note_screen.dart';

class LogRegBtns extends StatelessWidget {
  const LogRegBtns({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, NotesScreen.id),
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(defaultSize * 3),
        shadowColor: DesignTheme.colors.boxShadow,
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: DesignTheme.colors.mainColor,
                borderRadius: BorderRadius.circular(defaultSize * 3)),
            padding: EdgeInsets.symmetric(vertical: defaultSize * 1.5),
            child: Text(
              title,
              style: DesignTheme.text.logRegBtns,
            )),
      ),
    );
  }
}

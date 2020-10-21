import 'package:flutter/material.dart';
import 'package:snapix_test_app/config/config.dart';
import 'package:snapix_test_app/design/theme.dart';

class TextFieldHolder extends StatelessWidget {
  const TextFieldHolder({
    Key key,
    this.title,
    this.screenDefiner,
  }) : super(key: key);

  final String title;
  final ScreenDefiner screenDefiner;

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return Material(
      elevation: 8.0,
      shadowColor: DesignTheme.colors.boxShadow,
      borderRadius: BorderRadius.circular(defaultSize * 3),
      child: TextField(
        autofocus: false,
        style: screenDefiner == ScreenDefiner.notes
            ? DesignTheme.text.notesTextFieldHolder
            : DesignTheme.text.textField,
        decoration: InputDecoration(
            suffix: screenDefiner == ScreenDefiner.notes
                ? Icon(Icons.close)
                : SizedBox.shrink(),
            hintText: title,
            hintStyle: screenDefiner == ScreenDefiner.notes
                ? DesignTheme.text.notesTextFieldHolder
                : DesignTheme.text.textField,
            focusedBorder: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(defaultSize * 3)),
            contentPadding: EdgeInsets.symmetric(
                vertical: defaultSize * 1, horizontal: defaultSize * 2)),
      ),
    );
  }
}

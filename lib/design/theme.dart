import 'package:flutter/material.dart';

import 'src/src.dart';

class DesignTheme {
  static final DesignThemeColors colors = DesignThemeColors();
  static final DesignThemeText text = DesignThemeText();
  // static final DesignThemeShadows shadows = DesignThemeShadows();
  static final ThemeData appTheme = ThemeData(
    fontFamily: 'Open Sans',
    backgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

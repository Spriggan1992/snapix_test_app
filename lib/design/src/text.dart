import 'package:flutter/material.dart';

import '../theme.dart';

class DesignThemeText {
  final TextStyle title = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 30,
    color: DesignTheme.colors.titleAndLogRegBtn,
    fontFamily: 'Open Sans',
  );
  final TextStyle textField = TextStyle(
    fontSize: 25,
    color: DesignTheme.colors.typography,
    fontFamily: 'Open Sans',
  );
  final TextStyle logRegBtns = TextStyle(
    fontSize: 25,
    color: DesignTheme.colors.titleAndLogRegBtn,
    fontFamily: 'Open Sans',
  );
  final TextStyle newUser = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
    color: DesignTheme.colors.newUser,
    fontFamily: 'Open Sans',
  );
  final TextStyle notesTextFieldHolder = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: DesignTheme.colors.mainColor,
    fontFamily: 'Open Sans',
  );
  final TextStyle textNotesHolder = TextStyle(
    fontSize: 20,
    // fontWeight: FontWeight.w600,
    color: DesignTheme.colors.textNotes,
    fontFamily: 'Open Sans',
  );
}

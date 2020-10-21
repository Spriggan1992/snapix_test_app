import 'package:flutter/material.dart';
import 'package:snapix_test_app/design/theme.dart';
import 'package:snapix_test_app/screens/screens.dart';

class NewUser extends StatelessWidget {
  const NewUser({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, RegistrationScreen.id),
      child: Container(
          alignment: Alignment.center,
          child: Text(
            'Новый пользователь',
            style: DesignTheme.text.newUser,
          )),
    );
  }
}

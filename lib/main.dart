import 'package:flutter/material.dart';

import 'design/theme.dart';
import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DesignTheme.appTheme,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: LogingScreen.id,
      routes: {
        LogingScreen.id: (_) => LogingScreen(),
        RegistrationScreen.id: (_) => RegistrationScreen(),
        NotesScreen.id: (_) => NotesScreen(),
      },

      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
    );
  }
}

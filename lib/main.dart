
import 'package:flutter/material.dart';
import 'package:tabkha/shared/styles/theme.dart';

import 'features/registration/login/view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,

      supportedLocales: [
        Locale('ar'), // English
        // Locale('es'), // Spanish
      ],
      home: LoginScreen(),
    );
  }
}

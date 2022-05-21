import 'package:flutter/material.dart';
import 'package:youga/screens/calculator/view.dart';
import 'package:youga/screens/gender/view.dart';
import 'package:youga/screens/goal/view.dart';
import 'package:youga/screens/level/view.dart';
import 'package:youga/screens/months/view.dart';
import 'screens/splash/view.dart';
import 'screens/login/view.dart';
import 'screens/register/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            padding: EdgeInsets.symmetric(
              vertical: 20,
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          prefixIconColor: Colors.cyan,
        ),
        primarySwatch: Colors.cyan,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

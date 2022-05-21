import 'dart:async';

import 'package:flutter/material.dart';
import 'package:youga/screens/login/view.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => LoginScreen()),
            (route) => true));
    return Scaffold(
      body: Image(
        image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOmi3_sTD2JQHDMs2zOzLyGfEkx4wCohNzxA&usqp=CAU'),
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}

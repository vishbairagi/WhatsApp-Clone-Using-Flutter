import 'package:flutter/material.dart';
import 'package:instagram/Screens/Home_screen.dart';
import 'package:instagram/Screens/SplashScreen.dart';
import 'package:instagram/Screens/mainscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INSTAGRAM',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Home_Screen(),
    );
  }
}
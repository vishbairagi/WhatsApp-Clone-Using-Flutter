import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram/Screens/login.dart';
import 'package:instagram/Screens/uihelper.dart';


class SplashScreen extends StatefulWidget{
  @override

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LogInScreen()));

    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/group2.png")
          ],
        ),
      ),


    );
  }
}
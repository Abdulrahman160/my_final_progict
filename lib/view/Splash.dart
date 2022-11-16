import 'dart:async';
import 'package:flutter/material.dart';
import 'OnBoarding/OnBoarding01View.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState(){
    Timer(Duration(seconds: 5),
          () =>Navigator.pushReplacement(context, MaterialPageRoute(builder:
          (context) => OnBoarding01View())),
    );
    super.initState();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: Center(
        child: Container(
          // child: Image.asset(),
          height: 200,
          width: 200,
          child: Image.asset(""),
        ),
      ),
    );
  }
}
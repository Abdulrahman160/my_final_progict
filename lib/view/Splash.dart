import 'dart:async';
import 'package:flutter/material.dart';
import '../conset.dart';
import 'OnBoarding/OnBording.dart';

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

          (context) => OnBoardings())),
    );
    super.initState();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Center(
        child: Container(
          // child: Image.asset(),
          height: 200,
          width: 200,
          child: Image.asset("assets/images/Logo.png"),
        ),
      ),
    );
  }
}
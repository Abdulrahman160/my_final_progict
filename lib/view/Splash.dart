import 'dart:async';
import 'package:flutter/material.dart';
import '../conestant/conset.dart';
import '../conestant/image.dart';
import 'OnBoarding/on_bording.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoardings())),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        body: Center(
          child: Image.asset(
            AppImage.logo,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}

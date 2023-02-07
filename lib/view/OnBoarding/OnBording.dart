import 'package:flutter/material.dart';
import 'package:my_final_progict/view/OnBoarding/OnBoarding01View.dart';
import 'package:my_final_progict/view/OnBoarding/on_boarding%20_model.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          OnBoardingView(onBoarding: onBoarding[0]),
          OnBoardingView(onBoarding: onBoarding[1]),
          OnBoardingView(onBoarding: onBoarding[2]),


      ],
      ),
    );
  }
}

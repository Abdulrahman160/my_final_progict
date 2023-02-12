import 'package:flutter/material.dart';
import 'package:my_final_progict/view/OnBoarding/OnBoardingView.dart';
import 'package:my_final_progict/view/OnBoarding/on_boarding%20_model.dart';

class OnBoardings extends StatefulWidget {
  const OnBoardings({Key? key}) : super(key: key);

  @override
  State<OnBoardings> createState() => _OnBoardingState();
}
final pageController = PageController();
int? pageChanged;
class _OnBoardingState extends State<OnBoardings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
             pageChanged = index;
          });
        },
        controller: pageController,
        children: [
          OnBoardingView(data: onBoarding[0]),
          OnBoardingView(data: onBoarding[1]),
          OnBoardingView(data: onBoarding[2]),

      ],
      ),
    );
  }
}

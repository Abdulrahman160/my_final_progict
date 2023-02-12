import 'package:flutter/material.dart';

class OnBoarding {
  final String? image;
  final String? text1;
  final String? text2;
  bool? changeButton;

  OnBoarding({
    required this.image,
    required this.text1,
    required this.text2,
    required this.changeButton,
  });
}

List<OnBoarding> onBoarding = [
  OnBoarding(
    image: "assets/images/onBoarding1.png",
    text1: "Assist in overcoming social phobia",
    text2: "",
    changeButton: true,
  ),
  OnBoarding(
    image: "assets/images/onBoarding2.png",
    text1: "Privacy and easy access to",
    text2: "physicians",
    changeButton: true,
  ),
  OnBoarding(
    image: "assets/images/onBoarding3.png",
    text1: "Using VR to develop social skills in",
    text2: " various circumstances  ",
    changeButton: false,
  ),
];

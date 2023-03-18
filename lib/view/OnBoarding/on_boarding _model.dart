import 'package:flutter/material.dart';

class OnBoarding {
  final String? image;
  final String? text;
  final bool? changeButton;

  OnBoarding({
    required this.image,
    required this.text,
    required this.changeButton,
  });
}

List<OnBoarding> onBoarding = [
  OnBoarding(
    image: "assets/images/onBoarding1.png",
    text: "Assist in overcoming social phobia",
    changeButton: true,
  ),
  OnBoarding(
    image: "assets/images/onBoarding2.png",
    text: "Privacy and easy access to \n physicians",
    changeButton: true,
  ),
  OnBoarding(
    image: "assets/images/onBoarding3.png",
    text: "Using VR to develop social skills in\n various circumstances",
    changeButton: false,
  ),
];

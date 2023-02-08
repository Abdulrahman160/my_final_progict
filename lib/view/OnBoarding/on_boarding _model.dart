import 'package:flutter/material.dart';

class OnBoarding {
  final String? image;
  final String? title;
  final String? text1;
  final String? text2;
  bool? changeButton;

  OnBoarding({
    required this.image,
    required this.title,
    required this.text1,
    required this.text2,
    required this.changeButton,
  });
}

List<OnBoarding> onBoarding = [
  OnBoarding(
    image: "assets/images/Illustration.png",
    title: "Tittle One",
    text1: "Lorem ipsum dolor sit amet la maryame",
    text2: "dor sut colondeum.",
    changeButton: true,
  ),
  OnBoarding(
    image: "assets/images/Illustration (1).png",
    title: "Tittle One",
    text1: "Lorem ipsum dolor sit amet la maryame",
    text2: "dor sut colondeum.",
    changeButton: true,
  ),
  OnBoarding(
    image: "assets/images/Illustration (2).png",
    title: "Tittle One",
    text1: "Lorem ipsum dolor sit amet la maryame",
    text2: "dor sut colonnaded.",
    changeButton: false,
  ),
];

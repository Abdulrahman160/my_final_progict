import 'package:flutter/material.dart';

import '../../conestant/image.dart';

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
    image: AppImage.onBoarding1,
    title: "Tittle One",
    text1: "Lorem ipsum dolor sit amet la maryame \n dor sut colondeum.",
    text2: "dor sut colondeum.",
    changeButton: true,
  ),
  OnBoarding(
    image: AppImage.onBoarding2,
    title: "Tittle One",
    text1: "Lorem ipsum dolor sit amet la maryame",
    text2: "dor sut colondeum.",
    changeButton: true,
  ),
  OnBoarding(
    image:  AppImage.onBoarding2,
    title: "Tittle One",
    text1: "Lorem ipsum dolor sit amet la maryame",
    text2: "dor sut colonnaded.",
    changeButton: false,
  ),
];

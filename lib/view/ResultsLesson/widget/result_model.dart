import 'dart:ui';

import '../../../conestant/conset.dart';

class ResultDetails {
  final int result;

  final int totalResult;
  final String title;
  final Color color;

  ResultDetails({
    required this.result,
    required this.totalResult,
    required this.title,
    required this.color,
  });
}

List<ResultDetails> resultDetails = [
  ResultDetails(
    totalResult: 50,
    result: 25,
    title: "Sound",
    color: kRatioColor,
  ),
  ResultDetails(
    totalResult: 50,
    result: 10,
    title: "Speak 02",
    color: kRatioColor,
  ),
  ResultDetails(
    totalResult: 50,
    result: 50,
    title: "Move 03",
    color: kRatioColor,
  ),
  ResultDetails(
    totalResult: 50,
    result: 30,
    title: "Eye 04",
    color: kRatioColor,
  ),
  ResultDetails(
    totalResult: 50,
    result: 44,
    title: "active",
    color: kRatioColor,
  ),
];

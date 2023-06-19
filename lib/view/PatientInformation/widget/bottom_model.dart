
import 'package:flutter/cupertino.dart';

import '../../ResultsLesson/view/result_of_lesson.dart';
import '../patient_environment/view.dart';
import '../view.dart';

class BottomModel {
  final String text;
  final Widget namePage;
  final bool enableArrow;

  BottomModel({
    required this.text,
    required this.namePage,
    this.enableArrow = false,
  });
}

List<BottomModel> bottomDetails = [
  BottomModel(
    text:level,
    namePage:ResultOfLesson() ,
    enableArrow: true,
  ),
  BottomModel(
    text: 'Diaries',
    namePage: ResultOfLesson(),
  ),
  BottomModel(
    text: 'Edit Environment',
    namePage:PatientEnvironmentView() ,
  ),
  BottomModel(
    text: 'Result',
    namePage:ResultOfLesson() ,
  ),
];

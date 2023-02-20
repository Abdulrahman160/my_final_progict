import 'package:flutter/material.dart';

import 'exam_model.dart';

class ExamPageView extends StatefulWidget {
  const ExamPageView({Key? key}) : super(key: key);

  @override
  State<ExamPageView> createState() => _ExamPageViewState();
}
int? pageChanged;
final pageController = PageController();


class _ExamPageViewState extends State<ExamPageView> {
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
        ],

      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_final_progict/view/Pages_for_SPIN_Question/exam_view.dart';

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
          // ExamView(data:question[0],num: pageChanged!,),
          // ExamView(data:question[1],num: pageChanged!,),
          // ExamView(data:question[2],num: pageChanged!,),
          // ExamView(data:question[3],num: pageChanged!,),

        ],
      ),
    );
  }
}

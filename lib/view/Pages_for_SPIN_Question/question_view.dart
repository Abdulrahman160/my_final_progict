import 'package:flutter/material.dart';
import 'package:my_final_progict/view/Pages_for_SPIN_Question/exam_model.dart';
import '../../widget/Container_Button_Color.dart';
import '../../widget/Container_Button_nonColor.dart';
import '../../widget/CustomLatterRadio.dart';
import '../Page_Finish_Exam.dart';
import 'exam_view.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({
    Key? key,
    required this.data,
  }) : super(key: key);
  final Question data;

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.data.question!,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            flex: 5,
            child: CustomLatterRadioView(),
          ),
          Spacer(
            flex: 1,
          ),
          widget.data.changeButton
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ContainerNonColorView(
                        data: 'Previous',
                        onTap: () {
                          questionController.animateToPage(
                            questionChange! - 1,
                            duration: Duration(milliseconds: 250),
                            curve: Curves.bounceInOut,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: ContainerColorView(
                        data: 'Next',
                        onTap: () {
                          questionController.animateToPage(
                            questionChange! + 1,
                            duration: Duration(milliseconds: 250),
                            curve: Curves.bounceInOut,
                          );
                        },
                      ),
                    )
                  ],
                )
              : ContainerColorView(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FinishExamView(),
                      ),
                    );
                  },
                  data: 'End Exam',
                ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}

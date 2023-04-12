import 'package:flutter/material.dart';
import 'package:my_final_progict/view/Pages_for_SPIN_Question/question_view.dart';
import 'package:my_final_progict/view/Pages_for_SPIN_Question/widget/question_number.dart';
import 'exam_model.dart';

class ExamView extends StatefulWidget {
  const ExamView({
    Key? key,
  }) : super(key: key);

  @override
  State<ExamView> createState() => _ExamViewState();
}

int? questionChange;
final questionController = PageController();

class _ExamViewState extends State<ExamView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    ' Please read each statement and \n click in the column that indicates \n how much the statement applied \nto you over the past week.',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                pinned: false,
                floating: true,
                expandedHeight: MediaQuery.of(context).size.height * 0.200,
              )
            ];
          },
          body: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(children: [
                SizedBox(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      // TODO Container scroll with the press a button Next
                      itemCount: question.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            questionController.animateToPage(index,
                                duration: Duration(milliseconds: 250),
                                curve: Curves.easeInOut);
                            setState(() {
                              question.forEach((element) => element.isSelected = true);
                              question[index].isSelected =
                                  !question[index].isSelected;
                            });
                          },
                          child: QuestionNumberView(
                            number: question[index],
                          ),
                        );
                      }),
                  height: 100,
                ),
                Expanded(
                  child: PageView(
                    onPageChanged: (index) {
                      setState(() {
                        questionChange = index;
                        question
                            .forEach((element) => element.isSelected = true);
                        question[index].isSelected =
                            !question[index].isSelected;
                      });
                    },
                    controller: questionController,
                    children:
                        question.map((e) => QuestionView(data: e)).toList(),
                  ),
                ),
                // Expanded(
                //
                //     child: PageView(
                //       onPageChanged: (value) {
                //         setState(() {
                //           questionChange =value;
                //         });
                //       },
                //       itemBuilder: (context, index) =>
                //           QuestionView(data: question[index]),
                //       controller: questionController,
                //     )),
              ])),
        ));
  }
}

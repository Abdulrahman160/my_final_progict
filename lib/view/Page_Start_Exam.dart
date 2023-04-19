import 'package:flutter/material.dart';
import '../conestant/conset.dart';
import '../conestant/image.dart';
import '../widget/Container_Button_Color.dart';
import '../widget/Container_Button_nonColor.dart';
import 'Page_Finish_Exam.dart';
import 'Pages_for_SPIN_Question/exam_view.dart';

class PageStartExamView extends StatelessWidget {
  const PageStartExamView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Stack(
        children: [
          Image.asset(
            AppImage.background,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 260,
                ),
                Image.asset(AppImage.startExam,fit: BoxFit.cover,),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'You are ready to go to Exam!',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ContainerNonColorView(
                        data: 'Skip',
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FinishExamView(),
                              ));
                        },
                      ),
                    ),
                    SizedBox(
                      width: 44,
                    ),
                    Expanded(
                      child: ContainerColorView(
                        data: 'GO',
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ExamView(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

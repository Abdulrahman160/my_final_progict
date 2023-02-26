import 'package:flutter/material.dart';
import '../../widget/Container_Button_Color.dart';
import '../../widget/Container_Button_nonColor.dart';
import '../../widget/Radio_View.dart';

class ExamView extends StatefulWidget {
  const ExamView({
    Key? key,
  }) : super(key: key);

  // final int num;
  // final Question data;

  @override
  State<ExamView> createState() => _ExamViewState();
}

String choose = '';
final chooses = [
  'Not At All',
  'A Little Bit',
  'Somewhat',
  'Very Much',
  'Extremely'
];

class _ExamViewState extends State<ExamView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            SizedBox(
              height: 26,
            ),
            Text(
              ' Please read each statement and \n click in the column that indicates \n how much the statement applied \n to you over the past week.',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              height: 670,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'I am afraid of people in authority.',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    ...chooses.map((e) {
                      return CustomRadio(
                        title: e,
                        onChange: (v) => setState(() => choose = e),
                        value: e,
                        groupValue: choose,
                      );
                    }),
                    Spacer(),
                    Row(
                      children: [
                        Expanded(
                            child: ContainerNonColorView(
                          data: 'Previous',
                        )),
                        SizedBox(
                          width: 44,
                        ),
                        Expanded(
                            child: ContainerColorView(
                          data: 'Next',
                        ))
                      ],
                    ),
                    Spacer(),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

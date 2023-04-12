import 'package:flutter/material.dart';
import '../../../../conestant/conset.dart';
import '../../../../widget/Container_Button_Color.dart';
import '../widget/lesson_widget.dart';

class LessonOfTraining extends StatelessWidget {
  const LessonOfTraining({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
          "Social Anxiety",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: textColor,
          ),
        ),
        elevation: 0,
        backgroundColor: kTransparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: kGray,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: kBlack,
                size: 15,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  CustomResultView(title: 'Lesson1', ratio: 70,),
                  CustomResultView(title: 'Lesson2', ratio: 70,),
                  CustomResultView(title: 'Lesson3', ratio: 0,),
                ],
              ),
            ),
            ContainerColorView(data: 'Results of all lessons',),
          ],
        ),
      ),
    );
  }
}

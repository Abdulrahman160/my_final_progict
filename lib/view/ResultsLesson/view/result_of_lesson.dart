import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/appBar.dart';

import '../../../conestant/conset.dart';
import '../widget/result_model.dart';
import '../widget/result_widget.dart';

class ResultOfLesson extends StatelessWidget {
  const ResultOfLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
          "Lesson 1 Results ",
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
            radius: 23,
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
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    colors: [
                      containerNonBorderColor1,
                      containerNonBorderColor2
                    ],
                  )),
              width: double.infinity,
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    ResultWidget(resultDetails: resultDetails[index]),
                separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(),
                ),
                itemCount: resultDetails.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

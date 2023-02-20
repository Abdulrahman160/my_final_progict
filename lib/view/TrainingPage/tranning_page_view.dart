import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';
import 'package:my_final_progict/view/TrainingPage/widget/large_card_trainig.dart';

class TrainingPageView extends StatelessWidget {
  const TrainingPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
          "Training",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: textColor,
          ),
        ),
        elevation: 0,
        backgroundColor: kWhite,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircleAvatar(
            radius: 23,
            backgroundColor: kGray,
            child: Icon(
              Icons.search,
              color: kBlack,
            ),
          ),
        ),
      ),
      backgroundColor: kWhite,
      body: ListView.builder(
        itemBuilder: (context, index) => LargeCardTrainingView(),
        itemCount: 5,
      ),


    );
  }
}

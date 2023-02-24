import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';
import '../../LessonsPage/view/lessons_of_training.dart';

class LargeCardTrainingView extends StatelessWidget {
  const LargeCardTrainingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LessonOfTraining(),));
    },
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
          Image.asset(AppImage.largeCard,height: 200,width: 300),
          Container(
            width: 300,
            height: 55,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 5), // changes position of shadow
              ),
            ], borderRadius: BorderRadius.circular(15), color: kWhite),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Social Anxiety",
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AppImage.star,
                        height: 20,
                        width: 20,
                      ),
                      Text(
                        "4.9",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: kBlack,
                        ),
                      ),
                      // Image.asset(AppImage.downlode,height: 20,width: 20,),
                      //  Text(
                      //    "13 K",
                      //    style: TextStyle(
                      //      fontSize: 12,
                      //      fontWeight: FontWeight.w200,
                      //      color: kBlack,
                      //    ),
                      //  )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );

  }
}

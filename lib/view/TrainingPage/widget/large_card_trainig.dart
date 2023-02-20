import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';

class LargeCardTrainingView extends StatelessWidget {
  const LargeCardTrainingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Stack(children: [
              Image.asset(AppImage.largeCard),
              Positioned(bottom: 0,

                child: Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ], borderRadius: BorderRadius.circular(15), color: kWhite),
                  child: Column(
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
                      SizedBox(height: 100,),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}

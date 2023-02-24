import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../conestant/conset.dart';
import '../../../widget/RatioResult.dart';
import '../../ResultsLesson/view/result_of_lesson.dart';

class CustomResultView extends StatelessWidget {
  const CustomResultView({
    Key? key,
    required this.title,
    required this.ratio,
  }) : super(key: key);
  final String title;
  final double ratio;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultOfLesson(),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kGray,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, //New
                    blurRadius: 6.0,
                    offset: Offset(0, 5))
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 24,
                    color: textColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                RatioResultView(
                  sizeCircular: 66,
                  strokeWidth: 1,
                  ratio: ratio,
                  color: kRatioColor,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

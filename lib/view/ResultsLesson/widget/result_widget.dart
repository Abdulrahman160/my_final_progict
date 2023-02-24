import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_final_progict/view/ResultsLesson/widget/result_model.dart';

import '../../../conestant/conset.dart';
import '../../../widget/RatioResult.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({
    Key? key,
    required this.resultDetails,
  }) : super(key: key);
  final ResultDetails resultDetails;

  @override
  Widget build(BuildContext context) {
    double ratio = (resultDetails.result / resultDetails.totalResult) * 100;
    return Row(
      children: [

        Padding(
          padding: const EdgeInsets.only(right: 20,left: 30),
          child: RatioResultView(
            ratio: ratio,
            sizeCircular: 75,
            strokeWidth: 7,
            color: kRatioColor,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${resultDetails.title}",
              style: TextStyle(
                fontSize: 22,
                color: textColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "${resultDetails.result} of total ${resultDetails.totalResult}",
              style: TextStyle(
                fontSize: 16,
                color: textResult,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        )
      ],
    );
  }
}

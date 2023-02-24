import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../conestant/conset.dart';

class RatioResultView extends StatelessWidget {
  const RatioResultView({
    Key? key,
    required this.ratio,
    required this.sizeCircular,
    required this.strokeWidth,
    required this.color,
  }) : super(key: key);
  final double? ratio;
  final double sizeCircular;
  final double strokeWidth;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          child: CircularProgressIndicator(
            backgroundColor: backgroundForCircular,
            color: color,
            value: ratio! / 100,
            strokeWidth: strokeWidth,
          ),
          height: sizeCircular,
          width: sizeCircular,
        ),
        Text(
          "%$ratio",
          style: TextStyle(
            color: textColor,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}

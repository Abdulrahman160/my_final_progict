import 'package:flutter/material.dart';

import '../exam_model.dart';

class QuestionNumberView extends StatefulWidget {
  const QuestionNumberView({
    Key? key,
    required this.number,
  }) : super(key: key);

  final Question number;

  @override
  State<QuestionNumberView> createState() => _QuestionNumberViewState();
}

class _QuestionNumberViewState extends State<QuestionNumberView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 7.0, left: 7.0, top: 20),
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
                color: widget.number.isSelected ? Colors.grey : Colors.blue,
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: Text(
                "${widget.number.num}",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 1,
            width: 46,
            color: widget.number.isSelected ? Colors.grey : Colors.blue,
          ),
        ]));
  }
}

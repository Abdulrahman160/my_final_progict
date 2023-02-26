import 'package:flutter/material.dart';

import '../exam_model.dart';

class ContanierScrol extends StatelessWidget {
  const ContanierScrol({
    Key? key,
    required this.number,
  }) : super(key: key);

  final int number;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Text(
              "$number",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 1,
          width: 40,
          color: Colors.grey,
        ),
      ],
    );
  }
}
void Scroller(){
  for (int i=0;i<question.length;i++){
    ContanierScrol(number: i,);
  }
}

import 'package:flutter/material.dart';

import '../conestant/conset.dart';

class SpearatorView extends StatelessWidget {
  const SpearatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 1.5,
          width: 130,
          color: TextFiled,
        ),
        SizedBox(width: 5,),
        Text(
          'OR',
          style: TextStyle(
              color: Colors.black, fontSize: 10, fontWeight: FontWeight.w500),
        ),
        SizedBox(width: 5,),

        Container(
          width: 130,
          height: 1.5,
          color: TextFiled,

        ),
      ],
    );
  }
}

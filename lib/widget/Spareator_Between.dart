import 'package:flutter/material.dart';



class SpearatorView extends StatelessWidget {
  const SpearatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 1.5,
          width: 135,
          color: Colors.black.withOpacity(0.2),
        ),
        SizedBox(width: 8,),
        Text(
          'OR',
          style: TextStyle(
              color: Colors.black, fontSize: 10, fontWeight: FontWeight.w500),
        ),
        SizedBox(width: 8,),

        Container(
          width: 135,
          height: 1.5,
          color: Colors.black.withOpacity(0.2),

        ),
      ],
    );
  }
}

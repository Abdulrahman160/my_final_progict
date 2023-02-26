import 'package:flutter/cupertino.dart';

import '../../../conestant/conset.dart';

class DoctorDayView extends StatelessWidget {
  const DoctorDayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return                   Container(
      height: 65,
      width: 58,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            containerNonBorderColor1,
            containerNonBorderColor2
          ],
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: backgroundCircleAvatar,
            blurRadius: 9,
            spreadRadius: 2,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Sun\n14",
            style: TextStyle(
              color: kWhite,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

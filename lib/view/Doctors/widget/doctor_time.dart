import 'package:flutter/cupertino.dart';

import '../../../conestant/conset.dart';

class DoctorTimeView extends StatelessWidget {
  const DoctorTimeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return        Container(
      alignment: Alignment.center,
      height: 45,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: backgroundCircleAvatar,
              blurRadius: 9,
              spreadRadius: 2,
              offset: Offset(0, 3),
            )
          ],
          color: kWhite,
          border: Border.all(
            color: doctorDetailsColor,
          )),
      child: Text("12:30 PM",style: TextStyle(color: doctorDetailsColor),),
    );
  }
}

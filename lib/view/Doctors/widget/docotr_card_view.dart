import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';
import 'doctor_model.dart';

class DoctorCardView extends StatelessWidget {
  const DoctorCardView({Key? key, required this.doctor}) : super(key: key);
final Doctors doctor;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 210,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: kGray,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: kWhite,
              child: CircleAvatar(
                backgroundImage: AssetImage(doctor.image!),
                radius: 45,
              ),
              radius: 50,
            ),
          ),
          Text(
            doctor.name!,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}

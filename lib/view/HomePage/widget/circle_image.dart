import 'package:flutter/material.dart';
import 'package:my_final_progict/view/AllDoctor/widget/doctor_model.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({Key? key, required this.doctors}) : super(key: key);
final Doctors doctors;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 44,
              backgroundColor: backgroundCircleAvatar.withOpacity(0.5),
              child: CircleAvatar(
                backgroundImage: AssetImage(doctors.image!),
                radius: 40,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              doctors.name!,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({Key? key}) : super(key: key);

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
                backgroundImage: AssetImage(AppImage.person),
                radius: 40,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Ahmed",
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

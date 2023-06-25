import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key? key, required this.image}) : super(key: key);
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      width: 115,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kDarkGray.withOpacity(.6),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(3, 5),
          ),
        ],
        color: doctorDetailsColor,
        borderRadius: BorderRadius.circular(13),
      ),
      child: CircleAvatar(
          backgroundColor: kTransparent,
          child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                image,
              ))),
    );
  }
}

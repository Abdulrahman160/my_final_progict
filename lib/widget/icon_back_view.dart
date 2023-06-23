import 'package:flutter/material.dart';
import '../conestant/conset.dart';

class IconBackView extends StatelessWidget {
  const IconBackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: backgroundCircleAvatar,
      child: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: kBlack,
          size: 18,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

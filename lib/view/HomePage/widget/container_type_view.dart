import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';

class ContainerTypeView extends StatelessWidget {
  const ContainerTypeView({
    Key? key,
    required this.text,
    this.color = false,
  }) : super(key: key);
  final String text;
  final bool color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        alignment: Alignment.center,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color ? kDarkGreen : kGray,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: color ? Colors.white : textColor,
          ),
        ),
      ),
    );
  }
}

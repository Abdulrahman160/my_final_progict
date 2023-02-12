import 'package:flutter/material.dart';

import '../conestant/conset.dart';


class CustomRadio extends StatelessWidget {
  const CustomRadio({Key? key, required this.title, required this.onChange, required this.value, required this.groupValue}) : super(key: key);

  final String title;
  final Function(dynamic value) onChange;
  final dynamic groupValue;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: true,
          groupValue: groupValue == value,
          onChanged: (value) {
            value =  value;
            onChange( value);
          },
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
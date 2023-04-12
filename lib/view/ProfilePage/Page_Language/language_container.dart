import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import 'language_model.dart';

class LanguageContainer extends StatelessWidget {
  const LanguageContainer({Key? key, required this.data}) : super(key: key);
  final Language data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: TextFiled,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Image.asset(data.image!),
              SizedBox(
                width: 15,
              ),
              Text(data.text!)
            ],
          ),
        )
      ],
    );
  }
}

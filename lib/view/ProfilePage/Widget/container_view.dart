import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import '../Help_Center/contact_us_model.dart';

class CustomView extends StatefulWidget {
  const CustomView({
    Key? key,
    required this.data,
  }) : super(key: key);

  final ContactUs data;

  @override
  State<CustomView> createState() => _CustomViewState();
}

class _CustomViewState extends State<CustomView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 63,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: containerBorderColor)
              // borderRadius: BorderRadius.circular(20),
              ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 26,
                  ),
                  Image.asset(widget.data.image!),
                  SizedBox(
                    width: 26,
                  ),
                  Text(widget.data.text!)
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

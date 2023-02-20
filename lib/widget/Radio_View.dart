import 'package:flutter/material.dart';

import '../conestant/conset.dart';

class CustomRadio extends StatefulWidget {
  const CustomRadio({
    Key? key,
    required this.title,
    required this.onChange,
    required this.value,
    required this.groupValue,
  }) : super(key: key);

  final String title;
  final Function(dynamic value) onChange;
  final String groupValue;
  final String value;

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

bool value = true;
Color? color;

class _CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChange(value);
      },
      child: Row(
        children: [
          Radio(fillColor: MaterialStatePropertyAll(kBlack),
            value: value,
            groupValue: widget.groupValue == widget.value,
            onChanged: (value) {
              widget.onChange(value);
            },
          ),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 17,
              color: widget.groupValue == widget.value
                  ? kBlack
                  : GrayText,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

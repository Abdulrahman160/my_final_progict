import 'package:flutter/material.dart';

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
  final dynamic groupValue;
  final dynamic value;


  @override
  State<CustomRadio> createState() => _CustomRadioState();
}
Color? color;
class _CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: true,
          groupValue: widget.groupValue == widget.value,
          onChanged: (value) {
            value = value;
            if(widget.groupValue ==widget.value){
              color!=Colors.black;
            }
            else{
              color!=Colors.grey;
            }

            widget.onChange(value);
          },
        ),
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 17,
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
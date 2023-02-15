import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';

class ContainerColorView extends StatelessWidget {
  const ContainerColorView({
    Key? key,
    required this.data,
    this.onTap,
  //  required this.width,
  }) : super(key: key);

//final double ?width;
  final String data;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                colors: [containerNonBorderColor1, containerNonBorderColor2],
              )),
          child: Center(
              child: Text(
            data,
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ))),
    );
  }
}

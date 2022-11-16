import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({
    Key? key,
    required this.Text,
    this.Icon,
    required this.height,
    required this.width,
    required this.keyboardType,
    this.Color,
  }) : super(key: key);

  final String Text;
  final Icon;
  final double height;
  final double width;
  final TextInputType keyboardType;
  final Color;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Color, borderRadius: BorderRadius.circular(10)),
        child: Expanded(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              keyboardType: keyboardType,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: Text,
                suffixIcon: Icon,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
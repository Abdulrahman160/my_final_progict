import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({
    Key? key,
    required this.Text,
    required this.keyboardType,
    this.Color,
  }) : super(key: key);

  final String Text;


  final TextInputType keyboardType;
  final Color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 56,
        width: 295,
        decoration: BoxDecoration(
          color: Color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              keyboardType: keyboardType,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: Text,

                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

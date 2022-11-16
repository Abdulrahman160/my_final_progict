import 'package:flutter/material.dart';

class ContainernonColorView extends StatelessWidget {
  const ContainernonColorView({Key? key, required this.data}) : super(key: key);

  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 56,
            width: 295,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color(0xff4838D1))
            ),
            child: Center(
                child: Text(
                  data,
                  style: TextStyle(
                      color: Color(0xff4838D1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )
            )
    );

  }
}

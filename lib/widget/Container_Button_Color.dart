import 'package:flutter/material.dart';

class ContainerColorView extends StatelessWidget {
  const ContainerColorView({Key? key, required this.data}) : super(key: key);

  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 56,
            width: 295,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                colors: [Color(0xff2E91EF),Color(0xff95D7FF)]
              )
            ),
            child: Center(
                child: Text(
                  data,
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ))
    );
  }
}

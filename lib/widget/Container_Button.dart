import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({Key? key, required this.data}) : super(key: key);

  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 56,
            width: 295,
            decoration: BoxDecoration(
                color: Color(0xff95D7FF), borderRadius: BorderRadius.circular(8)),
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

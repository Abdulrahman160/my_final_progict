import 'package:flutter/material.dart';
import 'package:my_final_progict/conset.dart';

class ContainerColorView extends StatelessWidget {
  const ContainerColorView({Key? key, required this.data}) : super(key: key);

  final String data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
              height: 56,
              width: 295,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  colors: [containerNonBorderColor1,containerNonBorderColor2]
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
      ),
    );
  }
}

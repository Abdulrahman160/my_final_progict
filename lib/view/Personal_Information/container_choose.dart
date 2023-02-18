import 'package:flutter/material.dart';

import '../../widget/Radio_View.dart';


class ContainerChooseView extends StatefulWidget {
  const ContainerChooseView({Key? key, required this.question})
      : super(key: key);

  final String question;

  @override
  State<ContainerChooseView> createState() => _ContainerChooseViewState();
}

class _ContainerChooseViewState extends State<ContainerChooseView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xffF5F5FA), borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:1,top: 16),
            child: Text(
              widget.question,
              style: TextStyle(color: Color(0xffB8B8C7),fontWeight: FontWeight.w500,fontSize: 14),
            ),
          ),
          Row(
            children: [
              // CustomRadio(
              //   value: ,
              //   onChange: ,
              //   groupValue: ,
              //   title: '',
              // )
            ],
          )
        ],
      ),
    );
  }
}

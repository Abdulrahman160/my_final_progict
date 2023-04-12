import 'package:flutter/material.dart';
import '../../../conestant/conset.dart';
import 'faq_model.dart';

class ContainerText extends StatefulWidget {
  const ContainerText({
    Key? key,
    required this.data,
  }) : super(key: key);

  final DataPageFAQ data;

  @override
  State<ContainerText> createState() => _ContainerTextState();
}

class _ContainerTextState extends State<ContainerText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          height: 40,
          decoration: BoxDecoration(
            color: widget.data.values! ? kTransparent : Colors.blue,
            border: Border.all(
              color: widget.data.values! ? containerBorderColor : kTransparent,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              "${widget.data.text}",
              style: TextStyle(
                color: widget.data.values! ? containerBorderColor : kWhite,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}

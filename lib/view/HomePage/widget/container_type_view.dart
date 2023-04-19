import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';

class ContainerTypeView extends StatefulWidget {
  const ContainerTypeView({
    Key? key,
    required this.text,
    required this.index,
  }) : super(key: key);
  final String text;
  final int index;

  @override
  State<ContainerTypeView> createState() => _ContainerTypeViewState();
}

class _ContainerTypeViewState extends State<ContainerTypeView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {

          selectedIndex = widget.index;
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: selectedIndex == widget.index ? kDarkGreen : kGray,
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 15,
              color: selectedIndex == widget.index ?   kGray:kDarkGreen,

            ),
          ),
        ),
      ),
    );
  }
}

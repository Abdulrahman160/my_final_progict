import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';

class ContainerSalary extends StatelessWidget {
  const ContainerSalary({
    Key? key,
    required this.time,
    required this.price,
  }) : super(key: key);
  final String time;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                color: kGray,
                width: 1,
              ),
              color: kGray,
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 19),
              ),
              Text(
                "\$ $price",
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 19),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(2),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          height: 61,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            color: kWhite,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Period time",
                style: TextStyle(
                    color: kDarkGray,
                    fontWeight: FontWeight.w700,
                    fontSize: 12),
              ),
              Text(
                time,
                style: TextStyle(
                    color: kDarkGray,
                    fontWeight: FontWeight.w700,
                    fontSize: 12),
              )
            ],
          ),
        ),
      ],
    );
  }
}

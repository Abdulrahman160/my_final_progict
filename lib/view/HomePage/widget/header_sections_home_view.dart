import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';

class HeaderSectionsHomeView extends StatelessWidget {
  const HeaderSectionsHomeView({
    Key? key,

    required this.title,
    required this.hintTitle,
     this.hintTitleColor,
    this.onTap,
  }) : super(key: key);
  final GestureTapCallback? onTap;
  final String title;
  final String hintTitle;
  final Color? hintTitleColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        Spacer(),
        InkWell(
          onTap: onTap,
          child: Text(
            hintTitle,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: hintTitleColor != null?hintTitleColor!:kDarkGreen,
            ),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ]),
    );
  }
}

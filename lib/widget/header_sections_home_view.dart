import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../conestant/conset.dart';

class HeaderSectionsHomeView extends StatelessWidget {
  const HeaderSectionsHomeView({
    Key? key,

    required this.title,
   this.hintTitle,
     this.hintTitleColor,
    this.onTap,  this.enableHintTitle=true,
  }) : super(key: key);
  final GestureTapCallback? onTap;
  final String title;
  final String? hintTitle;
  final Color? hintTitleColor;
  final bool enableHintTitle;

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
           enableHintTitle? hintTitle!:"",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: hintTitleColor != null?hintTitleColor!:kDarkGreen,
            ),
          ),
        ),

      ]),
    );
  }
}

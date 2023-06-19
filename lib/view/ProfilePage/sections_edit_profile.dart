import 'package:flutter/material.dart';

import '../../widget/Text_From_Filed.dart';

class SessionEditProfile extends StatelessWidget {
  const SessionEditProfile({
    Key? key,
    required this.title,
    this.validator,
    this.numLine = 1,
    this.onchange,
    required this.hintText,
    this.onTap,
    this.controller,
  }) : super(key: key);
  final String title;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final int numLine;
  final ValueChanged<String>? onchange;
  final GestureTapCallback? onTap;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormFieldView(
            onTap: onTap,
            controller: controller,
            keyboardType: TextInputType.text,
            text: hintText,
            onchange: onchange,
            validator: validator,
            onSaved: (val) {},
            number: numLine,
          ),
        ],
      ),
    );
  }
}

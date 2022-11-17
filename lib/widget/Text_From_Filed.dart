import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({
    Key? key,
    required this.text,
    required this.keyboardType,
    required this.onchange,
    this.validator,
  }) : super(key: key);

  final String text;
  final TextInputType keyboardType;
  final ValueChanged<String>? onchange;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        height: 56,
        width: 295,
        decoration: BoxDecoration(
          color: Color(0xffF5F5FA),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 16, top: 4),
            child: TextFormField(
              keyboardType: keyboardType,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: text,
                helperStyle: TextStyle(
                    color: Color(0XFFB8B8C7).withOpacity(0.1),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
                border: InputBorder.none,
              ),
              onChanged: onchange,
              validator: validator,
            ),
          ),
        ),
      ),
    );
  }
}

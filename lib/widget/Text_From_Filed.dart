import 'package:flutter/material.dart';
import 'package:my_final_progict/conset.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({
    Key? key,
    required this.text,
   required this.keyboardType,
    required this.onchange,
    this.validator, required this.icon,
  }) : super(key: key);

  final String text;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onchange;
  final FormFieldValidator<String>? validator;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 56,
        width: 295,
        decoration: BoxDecoration(
          color: Color(0xffF5F5FA),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 16, top: 4),
          child: Row(
            children: [
              TextFormField(
                keyboardType: keyboardType,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: text,
                  helperStyle: TextStyle(
                      color: hintTextColor.withOpacity(0.01),
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                  border: InputBorder.none,
                ),
                onChanged: onchange,
                validator: validator,
              ),
              SizedBox()
              Icon(icon!),
            ],
          )
        ),
      ),
    );
  }
}

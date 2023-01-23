import 'package:flutter/material.dart';
import 'package:my_final_progict/conset.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({
    Key? key,
    required this.text,
   required this.keyboardType,
    required this.onchange,
    this.validator,
  }) : super(key: key);

  final String text;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onchange;
  final FormFieldValidator<String>? validator;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
          keyboardType: keyboardType,
          textAlign: TextAlign.start,
          decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 19,horizontal: 15),
            filled:true,
            fillColor:Color(0xffF5F5FA),
            enabledBorder: OutlineInputBorder(
                borderRadius:BorderRadius.circular(10),
                borderSide: BorderSide.none
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius:BorderRadius.circular(15),
                borderSide: BorderSide.none
            ),errorBorder:OutlineInputBorder(
                borderRadius:BorderRadius.circular(10),
                borderSide: BorderSide.none
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius:BorderRadius.circular(10),
                borderSide: BorderSide.none
            ),
            hintText: text,
            helperStyle: TextStyle(
                color: hintTextColor.withOpacity(0.01),
                fontWeight: FontWeight.w500,
                fontSize: 16),
            border: InputBorder.none,
          ),
          onChanged: onchange,
          validator: validator,
        );
  }
}

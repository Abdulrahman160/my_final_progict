import 'package:flutter/material.dart';

import '../conset.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,

    required this.text,
    required this.keyboardType,
    required this.onchange,
    this.validator,
   // required this.controller,
  }) : super(key: key);

 // final TextEditingController? controller;
  final String text;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onchange;
  final FormFieldValidator<String>? validator;
  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {

  var obscureText =true;
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
            child: TextFormField(
             // controller: widget.controller,
              obscureText: obscureText,
              keyboardType: widget.keyboardType,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    child:  obscureText ?Icon(Icons.visibility_off, color: Colors.grey,):
                    Icon(Icons.visibility, color:containerNonBorderColor1,)
                ),
                hintText: widget.text,
                helperStyle: TextStyle(
                    color: hintTextColor.withOpacity(0.01),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
                border: InputBorder.none,
              ),
              onChanged: widget.onchange,
              validator: widget.validator,
            )
        ),
      ),
    );
  }
}

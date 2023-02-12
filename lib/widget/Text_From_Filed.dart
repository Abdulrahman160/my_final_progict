import 'package:flutter/material.dart';


import '../conestant/conset.dart';

class textFormField extends StatefulWidget {
  const textFormField({
    Key? key,
    required this.text,
    required this.keyboardType,
    required this.onchange,
    this.validator,
    this.secure = false,
  }) : super(key: key);

  final String text;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onchange;
  final FormFieldValidator<String>? validator;
  final bool secure;

  @override
  State<textFormField> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<textFormField> {
  late bool secure;
  @override
  void initState() {
    this.secure = widget.secure;
    super.initState();
  }

  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secure,
      keyboardType: widget.keyboardType,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 19, horizontal: 15),
        suffixIcon: !widget.secure ? SizedBox() : IconButton(
          icon: Icon(secure ? Icons.visibility_off: Icons.visibility,),
          onPressed: () {
            secure = !secure;
            setState(() {});
          },
        ),
        filled: true,
        fillColor: Color(0xffF5F5FA),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        hintText: widget.text,
        helperStyle: TextStyle(
            color: hintTextColor.withOpacity(0.01),
            fontWeight: FontWeight.w500,
            fontSize: 16),
        border: InputBorder.none,
      ),
      onChanged: widget.onchange,
      validator: widget.validator,
    );
  }
}

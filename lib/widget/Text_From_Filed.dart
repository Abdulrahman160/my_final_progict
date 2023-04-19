import 'package:flutter/material.dart';

import '../conestant/conset.dart';

class TextFormFieldView extends StatefulWidget {
  TextFormFieldView({
    Key? key,
    required this.text,
    this.keyboardType = TextInputType.text,
    required this.onchange,
    this.validator,
    this.secure = false,
    required this.onSaved,
    required this.number,
  }) : super(key: key);

  final String text;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onchange;
  final FormFieldValidator<String>? validator;
  final bool secure;
  final Function(String?)? onSaved;
  final int number;

  @override
  State<TextFormFieldView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<TextFormFieldView> {
  late bool secure;

  @override
  void initState() {
    this.secure = widget.secure;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onSaved: widget.onSaved,
          obscureText: secure,
          keyboardType: widget.keyboardType,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 19, horizontal: 15),
            suffixIcon: !widget.secure
                ? SizedBox()
                : IconButton(
                    icon: Icon(
                      secure ? Icons.visibility_off : Icons.visibility,
                      color: secure ? Colors.grey : Colors.blue,
                    ),
                    onPressed: () {
                      secure = !secure;
                      setState(() {});
                    },
                  ),
            filled: true,
            fillColor: TextFiled,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            hintText: widget.text,
              hintStyle: TextStyle(
                  color: hintTextColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            border: InputBorder.none,
          ),
          maxLines: widget.number,
          onChanged: widget.onchange,
          validator: widget.validator,
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}

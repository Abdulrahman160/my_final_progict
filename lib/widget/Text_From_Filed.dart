import 'package:flutter/material.dart';
import 'package:my_final_progict/conset.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({
    Key? key,
    required this.text,
   required this.keyboardType,
    required this.onchange,
    this.validator,required this.enableSuffixIcon,
  }) : super(key: key);

  final String text;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onchange;
  final FormFieldValidator<String>? validator;
  final bool? enableSuffixIcon;

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  bool obscureText = true;
  Widget build(BuildContext context) {
    return TextFormField(
          keyboardType: widget.keyboardType,
          textAlign: TextAlign.start,
          decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 19,horizontal: 15),
            suffixIcon:widget.enableSuffixIcon! ?
            GestureDetector(
                onTap: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                child:
                obscureText
                    ? Icon(
                  Icons.visibility_off,
                  color: Colors.grey,
                )
                    : Icon(
                  Icons.visibility,
                  color: containerNonBorderColor1,
                )
            ):Text(""),
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

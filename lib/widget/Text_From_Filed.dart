import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({
    Key? key,
    required this.Text,
    required this.keyboardType,
    required this.onchange,
    this.validator,


  }) : super(key: key);

  final String Text;
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
            padding: EdgeInsets.only(left: 16,top: 4),
            child: TextFormField(
              keyboardType: keyboardType,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: Text,
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

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../conestant/conset.dart';

class BirthDateView extends StatefulWidget {
  BirthDateView({Key? key,
    required this.text, this.Onchage, this.validator,
  }) : super(key: key);

  final String text;
  final ValueChanged<String>? Onchage;
  final FormFieldValidator<String>? validator;


  @override
  State<BirthDateView> createState() => _BirthDateViewState();
}

class _BirthDateViewState extends State<BirthDateView> {
  @override
  TextEditingController? _date = TextEditingController();

  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _date,
          keyboardType: TextInputType.none,
          decoration: InputDecoration(
              hintText: widget.text,
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
            helperStyle: TextStyle(
                color: hintTextColor.withOpacity(0.01),
                fontWeight: FontWeight.w500,
                fontSize: 16),
            border: InputBorder.none,
          ),
          onTap: () async {
            DateTime? pickddate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101));
            if (pickddate != null) {
              setState(() {
                _date!.text = DateFormat('yyyy-MM-dd').format(pickddate);
              });
            }
          },
          onChanged: widget.Onchage,
          validator: widget.validator,
        ),
        SizedBox(height: 16,)
      ],
    );
  }
}

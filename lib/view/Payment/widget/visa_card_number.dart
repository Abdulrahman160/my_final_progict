import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';
class VisaCardNumberTextField extends StatefulWidget {
  const VisaCardNumberTextField({Key? key}) : super(key: key);

  @override
  State<VisaCardNumberTextField> createState() => _VisaCardNumberTextFieldState();
}

class _VisaCardNumberTextFieldState extends State<VisaCardNumberTextField> {
  @override
  TextEditingController _controller = TextEditingController();

  Widget build(BuildContext context) {
    return                 TextFormField(
      controller: _controller,
      keyboardType: TextInputType.number,
      inputFormatters: [
        LengthLimitingTextInputFormatter(19),
        FilteringTextInputFormatter.digitsOnly,
        new CardNumberFormatter(),
      ],
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 28,
          horizontal: 16,
        ),
        fillColor: kGray,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none),
        hintText: 'Visa Card Number',
        suffixIcon: Icon(Icons.credit_card,color: textColor,)

      ),
    );
  }
}


class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var buffer = new StringBuffer();
    for (int i = 0; i < text.length; i++) {
      if (i % 4 == 0 && i != 0) {
        buffer.write(' ');
      }

      buffer.write(text[i]);
    }

    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: new TextSelection.collapsed(offset: string.length));
  }}

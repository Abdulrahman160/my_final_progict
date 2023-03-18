import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/image.dart';
import 'package:my_final_progict/view/Payment/widget/payment_method_model.dart';

import '../../../conestant/conset.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({
    Key? key,
    required this.paymentMethodModel,
  }) : super(key: key);
  final PaymentMethodModel? paymentMethodModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kGray,
            border: Border.all(
                color: paymentMethodModel!.borderColor!
                    ? blueBorderColor
                    : kTransparent)),
        child: Row(
          children: [
            Image.asset(paymentMethodModel!.image),
            SizedBox(width: 7,),
            Text(
              paymentMethodModel!.text,
              style: TextStyle(
                fontSize: 12,
                color: kDarkGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

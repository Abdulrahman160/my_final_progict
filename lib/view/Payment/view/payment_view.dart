import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_final_progict/conestant/conset.dart';

import '../../../conestant/image.dart';
import '../../../payment/paymob.dart';
import '../../../widget/Container_Button_Color.dart';
import '../../../widget/icon_back_view.dart';
import '../widget/payment_method_container.dart';
import '../widget/payment_method_model.dart';
import '../widget/visa_card_number.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  @override
  TextEditingController _controller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 35,
                left: 22,
              ),
              child: IconBackView(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Text(
                "Add your \npayment method ",
                style: TextStyle(
                  fontSize: 25,
                  color: textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: paymentMethodModel.length,
                  itemBuilder: (context, index) => PaymentMethodView(
                    paymentMethodModel: paymentMethodModel[index],
                  ),
                )),
            SizedBox(
              height: 27,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  VisaCardNumberTextField(),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _controller,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 28,
                              horizontal: 16,
                            ),
                            fillColor: kGray,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Visa Card Number',

                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _controller,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 28,
                                horizontal: 16,
                              ),
                              fillColor: kGray,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Visa Card Number',
                              suffixIcon: Icon(
                                Icons.calendar_today_outlined,
                                color: textColor,
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: ContainerColorView(
                data: 'Continue',
                onTap: () async {
                  final response = await PaymobUtils.instance.pay(
                    currency: "EGP",
                    amount: "20000000",
                  );
                  print('*' * 20);
                  print(response?.id);
                  print(response?.success);
                  print(response?.message);
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}

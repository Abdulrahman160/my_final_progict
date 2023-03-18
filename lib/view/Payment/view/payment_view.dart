import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';

import '../../../widget/Container_Button_Color.dart';
import '../../../widget/icon_back_view.dart';
import '../widget/payment_method_container.dart';
import '../widget/payment_method_model.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: IconBackView(),
            ),
            Text(
              "Add your \npayment method ",
              style: TextStyle(
                fontSize: 25,
                color: textColor,
                fontWeight: FontWeight.w500,
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
            //todo:Hosni make text fiald for visa card
            Spacer(),
            ContainerColorView(
              data: 'Continue',
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

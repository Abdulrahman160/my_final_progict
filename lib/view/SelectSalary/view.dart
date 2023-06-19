import 'package:flutter/material.dart';
import 'package:my_final_progict/view/SelectSalary/widget/select_currency.dart';
import 'package:my_final_progict/widget/Text_From_Filed.dart';

import '../../conestant/conset.dart';
import '../../conestant/image.dart';
import '../../widget/appbar_widget.dart';

String salaryType = 'USD';

class SelectSalary extends StatefulWidget {
  const SelectSalary({Key? key}) : super(key: key);

  @override
  State<SelectSalary> createState() => _SelectSalaryState();
}

class _SelectSalaryState extends State<SelectSalary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
              title: 'Salary',
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Salary",
              style: TextStyle(
                  fontSize: 14, color: kBlack, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: TextFiled,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormFieldView(
                      text: 'Salary',
                      onchange: (value) {},
                      onSaved: (p0) {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    color: Color(0xff252B5C),
                    height: 35,
                    width: 2,
                  ),
                  InkWell(
                    onTap: () async{
                     await showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return SelectCurrency();
                        },
                      );
                     setState(() {
                       salaryType;
                     });
                    },
                    child: Row(
                      children: [
                        Text(
                          salaryType!,
                          style: TextStyle(
                            fontSize: 16,
                            color: kBlack,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: kBlack,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}

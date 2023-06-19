import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import '../view.dart';
import 'currency_model.dart';

class SelectCurrency extends StatefulWidget {
  const SelectCurrency({Key? key}) : super(key: key);

  @override
  State<SelectCurrency> createState() => _SelectCurrencyState();
}

class _SelectCurrencyState extends State<SelectCurrency> {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      enableDrag: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      builder: (context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        height: 500,
        width: double.infinity,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {setState(() {
                salaryType=currencyType[index].text;
              });

                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: TextFiled, borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        currencyType[index].image,
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        currencyType[index].text,
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            height: 10,
          ),
          itemCount: currencyType.length,
        ),
      ),
    );;
  }
}


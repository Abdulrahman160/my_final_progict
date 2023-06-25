import 'package:flutter/material.dart';
import 'package:my_final_progict/widget/Container_Button_Color.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';
import '../../../payment/paymob.dart';

class TrainingDetailsView extends StatelessWidget {
  const TrainingDetailsView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    int Salary=22000;

    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
                radius: 23,
                backgroundColor: kGray,
                child: Image.asset(AppImage.upLoad)),
          ),
        ],
        toolbarHeight: 100,
        centerTitle: true,
        elevation: 0,
        backgroundColor: kTransparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircleAvatar(
            radius: 23,
            backgroundColor: kGray,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: kBlack,
                size: 15,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(AppImage.mediumCard),
                Image.asset(AppImage.mediumShadow),
                Positioned(
                  top: 50,
                  left: 30,
                  child: Text(
                    "Social\nAnxiety",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: kWhite,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Social Anxiety",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: textColor,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 2.0),
                      child: Image.asset(AppImage.date),
                    ),
                    Text(
                      "October 27, 2022",
                      style: TextStyle(fontSize: 10, color: textColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Social anxiety disorder (SAD) is characterized by an excessive fear of negative evaluation and rejection by other people and a consistent fear of embarrassment or humiliation. The most commonly reported fear relates to public speaking or speaking up in a meeting, which can be referred to as “performance only” subtype of SAD.",
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 14,
                    color: kDarkGray.withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Social Anxiety",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: textColor,
                      ),
                    ),
                    Text(
                      "\$ $Salary",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "10 Lesson in 2 months",
                  style: TextStyle(color: textColor, fontSize: 12),
                ),
              ],
            ),
            Spacer(),
            ContainerColorView(data: "Buy Now",onTap: () async {
              final response = await PaymobUtils.instance.pay(
                currency: "EGP",
                amount: "$Salary",
              );
              print('*' * 20);
              print(response?.id);
              print(response?.success);
              print(response?.message);
            },),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

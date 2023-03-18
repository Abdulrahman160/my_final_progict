import 'package:flutter/material.dart';
import 'package:my_final_progict/widget/Container_Button_Color.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';
import '../../../widget/header_sections_home_view.dart';
import '../../../widget/icon_back_view.dart';
import '../../Doctors/widget/container_image.dart';
import '../widget/booking_succes.dart';
import '../widget/container_salary.dart';

class BookingForTrainingView extends StatefulWidget {
  const BookingForTrainingView({Key? key}) : super(key: key);

  @override
  State<BookingForTrainingView> createState() => _BookingForTrainingViewState();
}

class _BookingForTrainingViewState extends State<BookingForTrainingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        title: Text(
          "Transaction summary",
          style: TextStyle(
            color: kBlack,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        toolbarHeight: 100,
        centerTitle: true,
        elevation: 0,
        backgroundColor: kTransparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconBackView(),
        ),
        leadingWidth: 65,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(8),
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
                color: kGray, borderRadius: BorderRadius.circular(25)),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppImage.largeCard,
                  width: 150,
                  height: double.infinity,
                  fit: BoxFit.fill,
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Social Anxiety",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Social anxiety disorder\n(SAD) is characterized by \nan excessive fear of\nnegative evaluation and \nrejection by other people",
                      style: TextStyle(
                        color: kDarkGray,
                        fontSize: 11,height: 1.5,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 35.0,
            ),
            child: HeaderSectionsHomeView(
              title: 'Payment Detail',
              enableHintTitle: false,
            ),
          ),
          ContainerSalary(time: 'Forever', price: 200,),
          Padding(
            padding: const EdgeInsets.only(
              top: 35.0,
            ),
            child: HeaderSectionsHomeView(
              title: 'Payment Detail',
              hintTitle: 'change',
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: kTransparent,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: kGray,
                  width: 1,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImage.largeMastercard,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Mastercard",
                  style: TextStyle(
                    color: kDarkGray,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          ContainerColorView(
            data: "Buy Now",
            onTap: () => showBottomSheet(
              context: context,
              elevation: 5,
              builder: (BuildContext context) {
                return BookingSuccess();
                //todo hosni:why show button shit does not work
              },
            ),
          ),
        ]),
      ),
    );
  }
}

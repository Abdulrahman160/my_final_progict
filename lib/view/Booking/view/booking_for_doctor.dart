import 'package:flutter/material.dart';
import 'package:my_final_progict/widget/Container_Button_Color.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';
import '../../../widget/header_sections_home_view.dart';
import '../../../widget/icon_back_view.dart';
import '../../Doctors/widget/container_image.dart';
import '../widget/booking_succes.dart';
import '../widget/container_salary.dart';

class BookingForDoctorView extends StatefulWidget {
  const BookingForDoctorView({Key? key}) : super(key: key);

  @override
  State<BookingForDoctorView> createState() => _BookingForDoctorViewState();
}

class _BookingForDoctorViewState extends State<BookingForDoctorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        title: Text(
          "Doctor Details",
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
          Stack(
            alignment: Alignment.centerRight,
            children: [
              Container(
                padding: EdgeInsets.only(left: 18),
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kGray, borderRadius: BorderRadius.circular(25)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. Samantha",
                      style: TextStyle(
                        color: kBlack,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Cardiologist",
                        style: TextStyle(
                          color: doctorDetailsColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Text(
                      "A.j. Hospital, DA Washington ",
                      style: TextStyle(
                        color: doctorDetailsColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 115,
                decoration: BoxDecoration(
                  color: doctorDetailsColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ImageContainer(),
              ),
            ],
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
          ContainerSalary(time: '1 hour', price: 20,),
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
            onTap: () =>   showBottomSheet(
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

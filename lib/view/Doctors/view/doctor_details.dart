import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';
import '../../../widget/Container_Button_Color.dart';
import '../widget/doctor_day.dart';
import '../widget/doctor_time.dart';
import '../widget/text_style.dart';

class DoctorDetailsView extends StatefulWidget {
  const DoctorDetailsView({Key? key}) : super(key: key);

  @override
  State<DoctorDetailsView> createState() => _DoctorDetailsViewState();
}

class _DoctorDetailsViewState extends State<DoctorDetailsView> {
  bool forAndroid =false;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
          "Doctor Details",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: textColor,
          ),
        ),
        elevation: 0,
        backgroundColor: kTransparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircleAvatar(
            radius: 25,
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
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          "Dr. Samantha",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          "Cardiologist",
                          style: TextStyle(
                            color: doctorDetailsColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          "A.j. Hospital, DA Washington ",
                          style: TextStyle(
                            color: doctorDetailsColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        "Price",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Text(
                          "20 Dollar/hour",
                          style: TextStyle(
                            color: textColor.withOpacity(.71),
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          "About Dr. Samantha",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. ",
                        style: TextStyle(
                          color: doctorDetailsColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 5,
                  child: Container(
                    height: 105,
                    width: 115,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: backgroundCircleAvatar,
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(3, 5),
                        ),
                      ],
                      color: doctorDetailsColor,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: CircleAvatar(
                        backgroundColor: kTransparent,
                        child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              AppImage.person3,
                            ))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Appointment Schedule",
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            //TODO:add doctor day
            GridView.count(
              crossAxisCount: 3,
              children: List.generate(6, (index) {
                return DoctorTimeView();
              }),
              shrinkWrap: true,
              childAspectRatio: 4 / 2,
              mainAxisSpacing: 21,
              crossAxisSpacing: 13,
            ),
            SizedBox(
              height: 25,
            ),
            ContainerColorView(
              data: 'Book Appointment',
            ),


          ],
        ),
      ),
    );
  }
}

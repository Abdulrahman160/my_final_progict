import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/image.dart';
import 'package:my_final_progict/view/AllDoctor/widget/doctor_model.dart';

import '../../conestant/conset.dart';
import '../../widget/container_search/container_search_view.dart';
import 'widget/docotr_card_view.dart';

class AllDoctorView extends StatelessWidget {
  const AllDoctorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 23,
                      backgroundColor: kGray,
                      child: Icon(
                        Icons.search,
                        color: kBlack,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "All Doctors ",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: textColor,
                      ),
                    ),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                SearchView(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Find the best Doctors For you",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: textColor,
                    ),
                  ),
                ),
                GridView.count(
                  childAspectRatio: 3 / 4,
                  children: List.generate(doctorDetailes.length, (index) {
                    return DoctorCardView(
                      doctor: doctorDetailes[index],
                    );
                  }),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

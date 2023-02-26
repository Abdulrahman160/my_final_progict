import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/image.dart';

import '../../../conestant/conset.dart';
import '../../../widget/container_search/container_search_view.dart';
import '../widget/docotr_card_view.dart';
import '../widget/doctor_model.dart';

class AllDoctorView extends StatelessWidget {
  const AllDoctorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      toolbarHeight: 100,
      centerTitle: true,
      title: Text(
        "All Doctors",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w900,
          color: textColor,
        ),
      ),
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

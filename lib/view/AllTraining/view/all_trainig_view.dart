import 'package:flutter/material.dart';
import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';
import '../../../widget/container_search/container_search_view.dart';
import '../../HomePage/widget/small_trinning_card.dart';

class AllTrainingView extends StatelessWidget {
  const AllTrainingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
          "All Training ",
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
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kGray,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(AppImage.startExam, height: 55),

                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "You are ready to go to Exam!",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Find the best Training For you",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: textColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                GridView.count(
                  childAspectRatio: 3 / 4,
                  children: List.generate(5, (index) {
                    return SmallCardView();
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

import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/image.dart';
import 'package:my_final_progict/view/HomePage/widget/circle_image.dart';
import 'package:my_final_progict/view/HomePage/widget/container_places_view.dart';
import 'package:my_final_progict/view/HomePage/widget/container_type_view.dart';
import 'package:my_final_progict/view/HomePage/widget/small_card.dart';
import 'package:my_final_progict/view/HomePage/widget/title_of_parts.dart';

import '../../conestant/conset.dart';
import '../../widget/container_search_view.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       Stack(
        children: [
          Image.asset(AppImage.homeBackground),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9, vertical: 27),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 47,
                        alignment: Alignment.center,
                        width: 67,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Color(0xffECEDF3),
                          ),
                        ),
                        child: Text(
                          "level 1",
                          style: TextStyle(fontSize: 12, color: textColor),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xff2E91EF),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Icon(
                                Icons.notifications_none,
                                color: Color(0xff252B5C),
                                size: 25,
                              ),
                            ),
                            Positioned(
                              right: 12,
                              top: 10,
                              child: Container(
                                alignment: Alignment.center,
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Container(
                                  height: 6,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: Color(0xff2E91EF),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                          child: CircleAvatar(
                            backgroundImage: AssetImage(AppImage.person),
                            radius: 25,
                          ),
                          backgroundColor: backgroundCircleAvatar,
                          radius: 26),
                    ],
                  ),
                ),
                SizedBox(
                  height: 38,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: RichText(
                    text: TextSpan(
                        text: "Hey, Tiana ",
                        style: TextStyle(
                          fontSize: 25,
                          color: textColor,
                        ),
                        children: [
                          TextSpan(
                            text: "!\n",
                            style: TextStyle(
                              color: kDarkGreen,
                            ),
                          ),
                          TextSpan(
                            text: "Let's start exploring  ",
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SearchView(),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    height: 53,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ContainerTypeView(
                          text: "All",
                          color: true,
                        ),
                        ContainerTypeView(
                          text: "Puplic Speaking",
                        ),
                        ContainerTypeView(
                          text: "Social Anxiety",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PartTitleView(
                  title: 'Places',
                  hintTitle: 'Open Desktop Please',
                  hintTitleColor: textRedColor,
                ),
                SizedBox(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ContainerPlacesView(
                        image: AppImage.street,
                        title: "Street",
                      ),
                      ContainerPlacesView(
                        image: AppImage.street,

                        title: "Bus",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PartTitleView(
                  title: 'Top  Doctors',
                  hintTitle: 'explore',
                ),
                SizedBox(
                  height: 112,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return CircleImage();
                    },
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                PartTitleView(
                  title: 'Explore Training ',
                  hintTitle: 'view all',
                ),
                GridView.count(
                children:  List.generate(5, (index) {
                  return SmallCardView();
                }),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true, crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 30,

                ),
              ],
            ),
          ),
        ],

    );
  }
}

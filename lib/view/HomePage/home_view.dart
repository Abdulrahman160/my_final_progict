import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/image.dart';
import 'package:my_final_progict/view/HomePage/widget/circle_image.dart';
import 'package:my_final_progict/view/HomePage/widget/container_place_view.dart';
import 'package:my_final_progict/view/HomePage/widget/container_type_view.dart';
import 'package:my_final_progict/view/HomePage/widget/small_trinning_card.dart';
import 'package:my_final_progict/widget/header_sections_home_view.dart';
import '../../conestant/conset.dart';
import '../../widget/container_search/container_search_view.dart';
import '../AllTraining/view/all_trainig_view.dart';
import '../Doctors/view/all_doctor_view.dart';
import '../Doctors/view/doctor_details.dart';
import '../Doctors/widget/doctor_model.dart';
import '../auth/Login.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  List<Map<String, dynamic>> containerType = [
    {
      'text': "all",
      'isSelected': true,
    },
    {
      'text': "Puplic Speaking",
      'isSelected': true,
    },
    {
      'text': "Social Anxiety",
      'isSelected': true,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImage.homeBackground),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 27),
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
                      child: InkWell(
                        onTap: () async {
                          await FirebaseAuth.instance.signOut();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginView(),
                              ));
                        },
                        child: Text(
                          "level 1",
                          style: TextStyle(fontSize: 12, color: textColor),
                        ),
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
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        ContainerTypeView(
                          index: index, //todo: hosni how to make color change
                          text: containerType[index]['text'],
                        ),
                    itemCount: containerType.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: HeaderSectionsHomeView(
                  title: 'Places',
                  hintTitle: 'Open Desktop Please',
                  hintTitleColor: textRedColor,
                ),
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
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: HeaderSectionsHomeView(
                  title: 'Top  Doctors',
                  hintTitle: 'explore',
                  onTap: () =>
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllDoctorView(),
                          )),
                ),
              ),
              SizedBox(
                height: 112,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: doctorDetailes.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) => DoctorDetailsView(
                        image: doctorDetailes[index].image!,
                        name: doctorDetailes[index].name!,),));
                    },
                      child: CircleImage(
                        doctors: doctorDetailes[index],
                      ),);
                  },
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: HeaderSectionsHomeView(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllTrainingView(),
                        ));
                  },
                  title: 'Explore Training ',
                  hintTitle: 'view all',
                ),
              ),
              GridView.count(
                childAspectRatio: 3 / 4,
                children: List.generate(trainingModel.length, (index) {
                  return SmallCardView(
                    image: trainingModel[index].image,
                    text: trainingModel[index].text,
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
        ),
      ],
    );
  }
}

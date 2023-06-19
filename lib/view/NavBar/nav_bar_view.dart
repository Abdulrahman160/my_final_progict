import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/image.dart';
import '../../conestant/conset.dart';
import '../../main.dart';
import '../HomePage/home_view.dart';
import '../ProfilePage/profile_view.dart';
import '../TrainingPage/view/tranning_page_view.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({Key? key}) : super(key: key);

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int currentIndex = 0;
  Icon? icon;
  List content = [];
  final List patientContent = [
    [
      AppImage.home,
      "Home",
      HomePageView(),
    ],
    [
      AppImage.training02,
      "Training",
      TrainingPageView(),
    ],
    [
      AppImage.message,
      "Message",
      HomePageView(),
    ],
    [
      AppImage.profile,
      "Profile",
      ProfilePageView(),
    ],
  ];
  final List doctorContent = [
    [
      AppImage.home,
      "Home",
      HomePageView(),
    ],
    [
      AppImage.training,
      "Schedule",
      TrainingPageView(),
    ],
    [
      AppImage.message,
      "Message",
      HomePageView(),
    ],
    [
      AppImage.profile,
      "Profile",
      ProfilePageView(),
    ],
  ];

  getUser() {
    var user = FirebaseAuth.instance.currentUser;
    print(user!.email);
  }

  @override
  void initState() {
    getUser();

    if (users == 'Doctor') {
      content = doctorContent;
      icon=Icon(Icons.people);
    } else if (users == 'Patient') {
      content = patientContent;
      icon=Icon(Icons.add);

    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: patientContent[currentIndex][2],
      backgroundColor: kWhite,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kWhite,
        unselectedItemColor: Color(0xffAFD8FF),
        iconSize: 30,
        selectedItemColor: kBlue,
        onTap: (v) {
          currentIndex = v;
          setState(() {});
        },
        currentIndex: currentIndex,
        elevation: 0,
        items: content.map((e) {
          final index = content.indexOf(e);
          return BottomNavigationBarItem(
            icon: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Image.asset(
                    e[0],
                    color: currentIndex == index ? kBlue : kLiteBlue,
                  ),
                ),
                Text(
                  e[1],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: currentIndex == index ? kBlue : kLiteBlue,
                  ),
                )
              ],
            ),
            label: "",
          );
        }).toList(),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        child:icon ,
        onPressed: () {},
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}

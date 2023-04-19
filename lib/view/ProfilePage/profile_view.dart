import 'package:flutter/material.dart';
import 'package:my_final_progict/view/ProfilePage/profile_model.dart';
import 'package:my_final_progict/view/ProfilePage/profile_section.dart';

import 'package:my_final_progict/view/ProfilePage/setting_profile.dart';

import '../../conestant/image.dart';
import '../../main.dart';
import 'Widget/container_setting.dart';

class ProfilePageView extends StatefulWidget {
  const ProfilePageView({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePageView> createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
  @override
  List profile = [];

  List<Map<String, dynamic>> patientProfile = [
    {
      'title': 'Setting',
      'list': patientSetting,
    },
    {
      'title': 'About Us',
      'list': patientAboutUs,
    },
    {
      'title': 'Other',
      'list': patientOther,
    },
  ];
  List<Map<String, dynamic>> doctorProfile = [
    {
      'title': 'Setting',
      'list': doctorSetting,
    },
    {
      'title': 'Training',
      'list': doctorTraining,
    },
    {
      'title': 'About Us',
      'list': doctorAboutUs,
    },
    {
      'title': 'Other',
      'list': doctorOther,
    },
  ];

  @override
  void initState() {
    if (users == 'Patient') {
      profile = patientProfile;
    } else if (users == 'Doctor') {
      profile = doctorProfile;
    }
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AppImage.Frame),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 24,
                ),
                child: Text(
                  'My Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 115,
                ),
                child: Container(
                  height: 60,
                  // color: Colors.red,
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(AppImage.person),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Spacer(),
                          Text(
                            'Tiana Seris',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Text(
                            '+01 65841542265',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SettingView(),
                            ),
                          );
                        },
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 18,
                right: 18,
              ),
              child: ListView.builder(
                  itemBuilder: (context, index) => ProfileSection(
                      title: profile[index]['title'],
                      list: profile[index]['list']),

                  itemCount: patientProfile.length),
            ),
          )
        ],
      ),
    );
  }
}

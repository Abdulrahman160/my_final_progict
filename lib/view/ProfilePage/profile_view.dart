

import 'package:flutter/material.dart';
import 'package:my_final_progict/view/ProfilePage/profile_model.dart';
import 'package:my_final_progict/view/ProfilePage/setting_profile.dart';

import '../../conestant/image.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(AppImage.Frame)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 24),
            child: Text(
              'My Profile',
              style: TextStyle(
                  color: Colors.white, fontSize: 22, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 115),
            child: Container(
              height: 60,
              // color: Colors.red,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SettingView()));
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(40)),
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
          Padding(
              padding: EdgeInsets.only(
                top: 240.0,
                left: 18,
                right: 18,
              ),
              child: ListView(
                children: [
                  Text(
                    'Settings',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  SizedBox(
                    height: 295,
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: pation_setting_01.length,
                      separatorBuilder: (context, index) => SizedBox(),
                      itemBuilder: (context, index) => ContainerSettingView(
                        data: pation_setting_01[index],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'About Us',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: pation_setting_02.length,
                      separatorBuilder: (context, index) => SizedBox(),
                      itemBuilder: (context, index) => ContainerSettingView(
                        data: pation_setting_02[index],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  Text(
                    'Other',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  SizedBox(
                    height: 295,
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: pation_setting_03.length,
                      separatorBuilder: (context, index) => SizedBox(),
                      itemBuilder: (context, index) => ContainerSettingView(
                        data: pation_setting_03[index],
                      ),
                    ),
                  ),


                ],
              ))
        ],
      ),
    );
  }
}
//   Text(
//     'Settings',
//     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
//   ),
//   ContainerSettingView(data: setting_01[0]),
//   ContainerSettingView(data: setting_01[1]),
//   ContainerSettingView(data: setting_01[2]),
//   ContainerSettingView(data: setting_01[3]),
//   SizedBox(
//     height: 20,
//   ),
//   Text(
//     'About Us',
//     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
//   ),
//   ContainerSettingView(data: setting_02[0]),
//   ContainerSettingView(data: setting_02[1]),
//   ContainerSettingView(data: setting_02[2]),
//   SizedBox(
//     height: 20,
//   ),
//   Text(
//     'Other',
//     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
//   ),
//   ContainerSettingView(data: setting_03[0]),
//   ContainerSettingView(data: setting_03[1]),
//   ContainerSettingView(data: setting_03[2],),
//   SizedBox(
//     height: 20,
//   ),
//

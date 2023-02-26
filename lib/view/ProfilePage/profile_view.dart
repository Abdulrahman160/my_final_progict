import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/image.dart';
import 'package:my_final_progict/view/ProfilePage/profile_model.dart';

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
    return  Stack(
        children: [
          Image.asset(AppImage.Frame),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 24),
            child: Text(
              'My Profile',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 115),
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
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Tiana Seris',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '+01 65841542265',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    // onTap: TODO ,
                    child: Container(
                      height: 34,
                      width: 100,
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
                  )
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 240.0, left: 24),
              child: ListView(
                children: [
                  Text(
                    'Settings',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  ContainerSettingView(data: setting[0]),
                  ContainerSettingView(data: setting[1]),
                  ContainerSettingView(data: setting[2]),
                  ContainerSettingView(data: setting[3]),
                  SizedBox(height: 20,),
                  Text(
                    'About Us',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  ContainerSettingView(data: setting[4]),
                  ContainerSettingView(data: setting[5]),
                  ContainerSettingView(data: setting[6]),
                  SizedBox(height: 20,),
                  Text(
                    'Other',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  ContainerSettingView(data: setting[7]),
                  ContainerSettingView(data: setting[8]),
                  ContainerSettingView(data: setting[9]),
                  SizedBox(height: 20,),
                  Text('')

                ],
              ))
        ],
      );

  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/image.dart';
import 'package:my_final_progict/view/ProfilePage/profile_model.dart';
import 'Setting.dart';
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
    return Stack(
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
          padding: const EdgeInsets.only(left:30, top: 115),
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
                  onTap: (){
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context)=>SettingView()));
                  } ,
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
            padding: EdgeInsets.only(top: 240.0, left: 30,),
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  'About Us',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                ContainerSettingView(data: setting[4]),
                ContainerSettingView(data: setting[5]),
                ContainerSettingView(data: setting[6]),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Other',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                ContainerSettingView(data: setting[7]),
                ContainerSettingView(data: setting[8]),
                ContainerSettingView(
                  data: setting[9],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('')
              ],
            ))
      ],
    );
  }
}

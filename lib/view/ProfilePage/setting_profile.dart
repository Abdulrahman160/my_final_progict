import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_final_progict/view/ProfilePage/profile_view.dart';
import '../../conestant/conset.dart';
import '../../conestant/image.dart';
import '../../main.dart';
import '../../widget/icon_back_view.dart';
import '../NavBar/nav_bar_view.dart';
import 'Edit_profile.dart';
import 'Widget/Custom_Text.dart';

class SettingView extends StatefulWidget {
  const SettingView(
      {Key? key,
      this.name = 'Abdulrahman Hassan',
      this.address = 'Mansoura',
      this.birthday = '2001-01-01',
      this.headline = 'Doctor psychological'})
      : super(key: key);
  final String? name;
  final String? address;
  final String? birthday;
  final String? headline;

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  // bool? enableHeadline=false;
  // List<Map<String,dynamic>?> details=[
  //   {
  //     'title': 'Full Name',
  //     'content':'Tiana Saris',
  //   },
  //  enableHeadline? {
  //     'title': 'Full Name',
  //     'content':'Tiana Saris',
  //   }:null,
  //   {
  //     'title': 'Full Name',
  //     'content':'Tiana Saris',
  //   },
  //   {
  //     'title': 'Full Name',
  //     'content': 'Tiana Saris',
  //   },
  // ];
  // void initState() {
  //   users = 'Doctor';
  //   if (users == 'Doctor') {
  //     enableHeadline = true;
  //   } else if (users == 'Patient') {
  //     enableHeadline = false;
  //
  //   }
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: kGray,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: kBlack,
                      size: 18,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavBarView(currentIndex: 3),
                          ));
                    },
                  ),
                ),
                Text(
                  'My Profile',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditProfileView()));
                  },
                  child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: kGray,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(
                        Icons.edit,
                        color: kBlack,
                        size: 30,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 59,
            ),
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: Image.asset(AppImage.person),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextView(
                    title: 'Full Name',
                    name: widget.name!,
                  ),
                  users == 'Doctor'
                      ? CustomTextView(
                          title: 'Headline',
                          name: widget.headline!,
                        )
                      : Container(),
                  CustomTextView(
                    title: 'Address',
                    name: widget.address!,
                  ),
                  CustomTextView(
                    title: 'Birthday',
                    name: widget.birthday!,
                  ),
                  CustomTextView(
                    title: 'Gender',
                    name: 'Female',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

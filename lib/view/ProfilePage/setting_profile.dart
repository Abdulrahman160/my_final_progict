import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../conestant/conset.dart';
import '../../conestant/image.dart';
import '../../widget/icon_back_view.dart';
import 'Edit_profile.dart';
import 'Widget/Custom_Text.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBackView(),
                Text(
                  'My Profile',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => EditProfileView()));
                  },
                  child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: kGray,
                          borderRadius: BorderRadius.circular(25)
                      ),
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
                    name: 'Tiana Saris',
                  ),
                  CustomTextView(
                    title: 'Address',
                    name: '11 Ahmed Maher Apt. # 15\n Mansoura, CA 94109',
                  ),
                  CustomTextView(
                    title: 'Birthday',
                    name: '11/2/2001',
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

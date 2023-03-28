import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';
import '../../conestant/image.dart';
import '../../widget/Container_Icon.dart';
import '../../widget/icon_back_view.dart';
import 'Edit_profile.dart';
import 'Widget/Custom_Text.dart';

class SettingView extends StatefulWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
              elevation: 0.0,
              backgroundColor: backColor,
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconBackView(),
                    Text(
                      'My Profile',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    CustomIconView(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfileView()));
                      },
                      icons: Icons.arrow_back,
                    )
                  ],
                ),
              ))),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
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
      ),
    );
  }
}

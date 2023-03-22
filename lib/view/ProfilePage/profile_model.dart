
import 'package:flutter/material.dart';
import '../../conestant/image.dart';
import 'Update_Password.dart';

class Setting {
  final String? icon;
  final String? text;
  final bool changeSwitch;
  final Widget? namePage;
  final GestureTapCallback? onTap;

  Setting(
      {this.namePage,
      required this.icon,
      required this.text,
      this.changeSwitch = false,
      this.onTap});
}

List<Setting> setting = [
  Setting(
    icon: AppImage.lock,
    text: 'Change Password',
    namePage: PageUpdatePasswordView(),
  ),
  Setting(
    icon: AppImage.Globe,
    text: 'Language',
  ),
  Setting(
    onTap: () {},
    icon: AppImage.Notification,
    text: 'Notification',
    changeSwitch: true,
  ),
  Setting(
    onTap: () {},
    icon: AppImage.darkMode,
    text: 'Dark mode',
    changeSwitch: true,
  ),
  Setting(
    icon: AppImage.Help,
    text: 'FAQ',
  ),
  Setting(
    icon: AppImage.Security,
    text: 'Privacy Policy',
  ),
  Setting(
    icon: AppImage.Team,
    text: 'Contact Us',
  ),
  Setting(
    icon: AppImage.Share,
    text: 'Share',
  ),
  Setting(
    icon: AppImage.Mobile,
    text: 'Get The Latest Version',
  ),
  Setting(
      icon: AppImage.logout,
      text: 'Log out',
    onTap: (){
      {
        // TODO hassan showModalBottomSheet(
        //     backgroundColor: Colors.transparent,
        //     context: context ,
        //     builder: (BuildContext context) {
        //       return BottomSheetView(
        //         title: 'Log Out',
        //         hint: 'Are you sure you want to Log out?',
        //         nameColor: 'Log out',
        //         nameNonColor: 'Cancel',
        //       );
        //     });
      }
    }
),
];

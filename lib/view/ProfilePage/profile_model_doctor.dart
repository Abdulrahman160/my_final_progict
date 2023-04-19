import 'package:flutter/material.dart';
import '../../conestant/image.dart';
import 'Help_Center/help_center.dart';
import 'Page_Language/language_view.dart';
import 'Update_Password.dart';

class Setting_Doctor {
  final String? icon;
  final String? text;
  final bool changeSwitch;
  final Widget? namePage;
  final bool? enableButtonSheet;

  Setting_Doctor(
      {this.namePage,
      required this.icon,
      required this.text,
      this.changeSwitch = false,
      this.enableButtonSheet = false});
}

List<Setting_Doctor> doctor_setting_01 = [
  Setting_Doctor(
    icon: AppImage.salary,
    text: 'Salary',
  ),
  Setting_Doctor(
    icon: AppImage.lock,
    text: 'Change Password',
    namePage: PageUpdatePasswordView(),
  ),
  Setting_Doctor(
    icon: AppImage.Globe,
    text: 'Language',
    namePage: LanguageView(),
  ),
  Setting_Doctor(
    icon: AppImage.Notification,
    text: 'Notification',
    changeSwitch: true,
  ),
  Setting_Doctor(
    icon: AppImage.darkMode,
    text: 'Dark mode',
    changeSwitch: true,
  ),
];

List<Setting_Doctor> doctor_setting_02 = [
  Setting_Doctor(
    icon: AppImage.training,
    text: 'Training',
  ),
];
List<Setting_Doctor> doctor_setting_03 = [
  Setting_Doctor(
    icon: AppImage.Help,
    text: 'FAQ',
    namePage: HelpCenterView(
      x: 0,
    ),
  ),
  Setting_Doctor(
    icon: AppImage.Security,
    text: 'Privacy Policy',
  ),
  Setting_Doctor(
    icon: AppImage.Team,
    text: 'Contact Us',
    namePage: HelpCenterView(
      x: 1,
    ),
  ),
];

List<Setting_Doctor> doctor_setting_04 = [
  Setting_Doctor(
    icon: AppImage.Share,
    text: 'Share',
  ),
  Setting_Doctor(
    icon: AppImage.Mobile,
    text: 'Get The Latest Version',
  ),
  Setting_Doctor(
    icon: AppImage.logout,
    text: 'Log out',
    enableButtonSheet: true,
  ),
];

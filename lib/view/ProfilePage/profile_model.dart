import 'package:flutter/material.dart';
import '../../conestant/image.dart';
import 'Help_Center/help_center.dart';
import 'Page_Language/language_view.dart';
import 'Update_Password.dart';

class Setting_Pation {
  final String? icon;
  final String? text;
  final bool changeSwitch;
  final Widget? namePage;
  final bool? enableButtonSheet;

  Setting_Pation(
      {this.namePage,
      required this.icon,
      required this.text,
      this.changeSwitch = false,
      this.enableButtonSheet = false});
}

List<Setting_Pation> pation_setting_01 = [
  Setting_Pation(
    icon: AppImage.lock,
    text: 'Change Password',
    namePage: PageUpdatePasswordView(),
  ),
  Setting_Pation(
    icon: AppImage.Globe,
    text: 'Language',
    namePage: LanguageView(),
  ),
  Setting_Pation(
    icon: AppImage.Notification,
    text: 'Notification',
    changeSwitch: true,
  ),
  Setting_Pation(
    icon: AppImage.darkMode,
    text: 'Dark mode',
    changeSwitch: true,
  ),
];

List<Setting_Pation> pation_setting_02 = [
  Setting_Pation(
    icon: AppImage.Help,
    text: 'FAQ',
    namePage: HelpCenterView(
      x: 0,
    ),
  ),
  Setting_Pation(
    icon: AppImage.Security,
    text: 'Privacy Policy',
  ),
  Setting_Pation(
    icon: AppImage.Team,
    text: 'Contact Us',
    namePage: HelpCenterView(
      x: 1,
    ),
  ),
];

List<Setting_Pation> pation_setting_03 = [
  Setting_Pation(
    icon: AppImage.Share,
    text: 'Share',
  ),
  Setting_Pation(
    icon: AppImage.Mobile,
    text: 'Get The Latest Version',
  ),
  Setting_Pation(
    icon: AppImage.logout,
    text: 'Log out',
    enableButtonSheet: true,
  ),
];

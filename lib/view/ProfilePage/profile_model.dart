import 'package:flutter/material.dart';
import '../../conestant/image.dart';
import 'Help_Center/help_center.dart';
import 'Page_Language/language_view.dart';
import 'Update_Password.dart';
import 'Widget/bottomSheet.dart';
import 'Widget/container_setting.dart';

class Setting {
  final String? icon;
  final String? text;
  final bool changeSwitch;
  final Widget? namePage;
  final bool? enableButtonSheet;

  Setting(
      {this.namePage,
      required this.icon,
      required this.text,
      this.changeSwitch = false,
      this.enableButtonSheet = false});
}

List<Setting> setting_01 = [
  Setting(
    icon: AppImage.lock,
    text: 'Change Password',
    namePage: PageUpdatePasswordView(),
  ),
  Setting(
    icon: AppImage.Globe,
    text: 'Language',
    namePage: LanguageView(),
  ),
  Setting(
    icon: AppImage.Notification,
    text: 'Notification',
    changeSwitch: true,
  ),
  Setting(
    icon: AppImage.darkMode,
    text: 'Dark mode',
    changeSwitch: true,
  ),
];

List<Setting> setting_02 = [
  Setting(
    icon: AppImage.Help,
    text: 'FAQ',
    namePage: HelpCenterView(
      x: 0,
    ),
  ),
  Setting(
    icon: AppImage.Security,
    text: 'Privacy Policy',
  ),
  Setting(
    icon: AppImage.Team,
    text: 'Contact Us',
    namePage: HelpCenterView(
      x: 1,
    ),
  ),
];

List<Setting> setting_03 = [
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
    enableButtonSheet: true,
  ),
];

import 'package:flutter/material.dart';
import '../../conestant/image.dart';
import 'Help_Center/help_center.dart';
import 'Page_Language/language_view.dart';
import 'Update_Password.dart';

class SettingModel {
  final String? icon;
  final String? text;
  final bool changeSwitch;
  final Widget? namePage;
  final bool? enableButtonSheet;

  SettingModel(
      {this.namePage,
      required this.icon,
      required this.text,
      this.changeSwitch = false,
      this.enableButtonSheet = false});
}

List<SettingModel> patientSetting = [
  SettingModel(
    icon: AppImage.lock,
    text: 'Change Password',
    namePage: PageUpdatePasswordView(),
  ),
  SettingModel(
    icon: AppImage.Globe,
    text: 'Language',
    namePage: LanguageView(),
  ),
  SettingModel(
    icon: AppImage.Notification,
    text: 'Notification',
    changeSwitch: true,
  ),
  SettingModel(
    icon: AppImage.darkMode,
    text: 'Dark mode',
    changeSwitch: true,
  ),
];

List<SettingModel> patientAboutUs = [
  SettingModel(
    icon: AppImage.Help,
    text: 'FAQ',
    namePage: HelpCenterView(
      x: 0,
    ),
  ),
  SettingModel(
    icon: AppImage.Security,
    text: 'Privacy Policy',
  ),
  SettingModel(
    icon: AppImage.Team,
    text: 'Contact Us',
    namePage: HelpCenterView(
      x: 1,
    ),
  ),
];

List<SettingModel> patientOther = [
  SettingModel(
    icon: AppImage.Share,
    text: 'Share',
  ),
  SettingModel(
    icon: AppImage.Mobile,
    text: 'Get The Latest Version',
  ),
  SettingModel(
    icon: AppImage.logout,
    text: 'Log out',
    enableButtonSheet: true,
  ),
];
List<SettingModel> doctorSetting = [
  SettingModel(
    icon: AppImage.salary,
    text: 'Salary',
  ),
  SettingModel(
    icon: AppImage.lock,
    text: 'Change Password',
    namePage: PageUpdatePasswordView(),
  ),
  SettingModel(
    icon: AppImage.Globe,
    text: 'Language',
    namePage: LanguageView(),
  ),
  SettingModel(
    icon: AppImage.Notification,
    text: 'Notification',
    changeSwitch: true,
  ),
  SettingModel(
    icon: AppImage.darkMode,
    text: 'Dark mode',
    changeSwitch: true,
  ),
];

List<SettingModel> doctorTraining = [
  SettingModel(
    icon: AppImage.training,
    text: 'Training',
  ),
];
List<SettingModel> doctorAboutUs = [
  SettingModel(
    icon: AppImage.Help,
    text: 'FAQ',
    namePage: HelpCenterView(
      x: 0,
    ),
  ),
  SettingModel(
    icon: AppImage.Security,
    text: 'Privacy Policy',
  ),
  SettingModel(
    icon: AppImage.Team,
    text: 'Contact Us',
    namePage: HelpCenterView(
      x: 1,
    ),
  ),
];

List<SettingModel> doctorOther= [
  SettingModel(
    icon: AppImage.Share,
    text: 'Share',
  ),
  SettingModel(
    icon: AppImage.Mobile,
    text: 'Get The Latest Version',
  ),
  SettingModel(
    icon: AppImage.logout,
    text: 'Log out',
    enableButtonSheet: true,
  ),
];

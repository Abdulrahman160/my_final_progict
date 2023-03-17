import '../../conestant/image.dart';

class Setting {
  final String? icon;
  final String? text;
   bool? changeSwitch;

  Setting({
    required this.icon,
    required this.text,
    required this.changeSwitch,
  });
}

List<Setting> setting = [
  Setting(
    icon: AppImage.lock,
    text: 'Change Password',
    changeSwitch: false,
  ),
  Setting(
    icon: AppImage.Globe,
    text: 'Language',
    changeSwitch: false,
  ),
  Setting(
    icon: AppImage.Notification,
    text: 'Notification',
    changeSwitch: true,
  ),
  Setting(
    icon: AppImage.Dark_mode,
    text: 'Dark mode',
    changeSwitch: true,
  ),
  Setting(
    icon: AppImage.Help,
    text: 'FAQ',
    changeSwitch: false,
  ),
  Setting(
    icon: AppImage.Security,
    text: 'Privacy Policy',
    changeSwitch: false,
  ),
  Setting(
    icon: AppImage.Team,
    text: 'Contact Us',
    changeSwitch: false,
  ),
  Setting(
    icon: AppImage.Share,
    text: 'Share',
    changeSwitch: false,
  ),
  Setting(
    icon: AppImage.Mobile,
    text: 'Get The Latest Version',
    changeSwitch: false,
  ),
  Setting(
    icon: AppImage.logout,
    text: 'Log out',
    changeSwitch: false,
  ),
];

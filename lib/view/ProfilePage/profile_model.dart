import '../../conestant/image.dart';

class Setting {
  final String? icon;
  final String? text;

  Setting({
    required this.icon,
    required this.text,
  });
}

List<Setting> setting = [
  Setting(
    icon: AppImage.lock,
    text: 'Change Password',
  ),
  Setting(
    icon: AppImage.Globe,
    text: 'Language',
  ),
  Setting(
    icon: AppImage.Notification,
    text: 'Notification',
  ),
  Setting(
    icon: AppImage.darkMode,
    text: 'Dark mode',
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
  ),
];

import 'package:my_final_progict/conestant/image.dart';

class ContactUs {
  final String? image;
  final String? text;

  ContactUs({
     required this.text,
    required this.image,
  });
}

List<ContactUs> contactus = [
  ContactUs(image: AppImage.CustomerService, text: 'Customer Service'),
  ContactUs(image: AppImage.WhatsApp, text: 'WhatsApp'),
  ContactUs(image: AppImage.Website, text: 'Website'),
  ContactUs(image: AppImage.facebook, text: 'Facebook'),
  ContactUs(image: AppImage.twitter, text: 'Twitter'),
];

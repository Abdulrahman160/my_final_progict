import 'package:my_final_progict/conestant/image.dart';

class Doctors {
  final String? image;
  final String? name;

  Doctors({
    required this.image,
    required this.name,
  });
}

List<Doctors> doctorDetailes = [
  Doctors(
    image: AppImage.person,
    name: "Amanda",
  ),
  Doctors(
    image: AppImage.person1,
    name: "Anderson",
  ),
  Doctors(
    image: AppImage.person2,
    name: "Tobi",
  ),
  Doctors(
    image: AppImage.person3,
    name: "Michael",
  ),
  Doctors(
    image: AppImage.person4,
    name: "Andrew",
  ),
  Doctors(
    image: AppImage.person5,
    name: "Samantha",
  ),
];

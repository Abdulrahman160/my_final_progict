import '../../../conestant/image.dart';

class PatientModel{
  final String name;
  final String image;
  PatientModel({
 required this.image,   
 required this.name,   
});
}



List<PatientModel>patientModel=[
  PatientModel(image: AppImage.Border, name: 'Emma'),
  PatientModel(image: AppImage.Border1, name: 'Barbara'),
  PatientModel(image: AppImage.Border2, name: 'Tiana'),
  PatientModel(image: AppImage.Border3, name: 'Akira'),
  PatientModel(image: AppImage.Border4, name: 'Gwen'),
  PatientModel(image: AppImage.Border5, name: 'Gwen'),
  PatientModel(image: AppImage.Border6, name: 'Isabella'),
  PatientModel(image: AppImage.Border7, name: 'Aryan'),
  PatientModel(image: AppImage.Border8, name: 'Aarav'),
  PatientModel(image: AppImage.Border9, name: 'Hikari '),
];


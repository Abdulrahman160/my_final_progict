import 'package:my_final_progict/conestant/image.dart';

class TrainingSmallCard {
  final String? image;
  final String? name;

  TrainingSmallCard({
    required this.image,
    required this.name,
  });
}

List<TrainingSmallCard> trainingSmallCardDetailes = [
  TrainingSmallCard(
    image: AppImage.smallCard,
    name: "Social Anxiety",
  ),
  TrainingSmallCard(
    image: AppImage.publicSpeaking,
    name: "Public Speaking",
  ),
  TrainingSmallCard(
    image: AppImage.house,
    name: "House",
  ),
  TrainingSmallCard(
    image: AppImage.bigCompany,
    name: "Big Company",
  ),


];

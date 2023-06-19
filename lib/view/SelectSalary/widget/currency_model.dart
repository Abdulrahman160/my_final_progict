import 'package:my_final_progict/conestant/image.dart';

import '../view.dart';

class CurrencyModel {
  final String image;
  final String text;

  CurrencyModel({
    required this.text,
    required this.image,

  });
}

List<CurrencyModel> currencyType = [
  CurrencyModel(

    text: 'SAR',
    image: AppImage.arabic,
  ),
  CurrencyModel(

    text: 'USD',
    image: AppImage.english,
  ),
  CurrencyModel(

    text: 'FRF',
    image: AppImage.france,
  ),
  CurrencyModel(

    text: 'DEM',
    image: AppImage.german,
  ),
];

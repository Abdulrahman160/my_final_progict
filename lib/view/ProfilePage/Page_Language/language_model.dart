class Language {
  final String? image;
  final String? text;

  Language({required this.text, required this.image});
}

List<Language> language = [
  Language(text: 'Arabic' , image: 'assets/images/arabic.png',),
  Language(text: 'English', image: 'assets/images/english.png'),
  Language(text: 'French' , image: 'assets/images/france.png'),
  Language(text: 'German' , image: 'assets/images/german.png'),
  Language(text: 'Japanese', image: 'assets/images/japanese.png'),
];

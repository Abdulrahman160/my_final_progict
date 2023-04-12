class Question {
  final String? question;
  final int? num;
  final bool changeButton;
   bool isSelected;

  Question({
    required this.question,
    required this.num,
      this.changeButton=true,
     this.isSelected = true,
  });
}

List<Question> question = [
  Question(
    num: 1,
    question: " I am afraid of people in authority?",

  ),
  Question(
    num: 2,
    question: " I am bothered by blushing in front of people?",
  ),
  Question(
    num: 3,
    question: "Parties and social events scare me?",
  ),
  Question(
    num: 4,
    question: " I avoid talking to people I don’t know?",
  ),
  Question(
    num: 5,
    question: "Being criticized scares me a lot?",
  ),
  Question(
    num: 6,
    question:
        "Fear of embarrassment causes me to avoid doing things or speaking to people?",
  ),
  Question(
    num: 7,
    question: "Sweating in front of people causes me distress?",
  ),
  Question(
    num: 8,
    question: "I avoid going to parties?",
  ),
  Question(
    num: 9,
    question: "I avoid activities in which Iam the center of attention?",
  ),
  Question(
    num: 10,
    question: "Talking to strangers scares me?",
  ),
  Question(
    question: "I avoid having to give speeches?",
    num: 11,
  ),
  Question(
    question: "I would do anything to avoid being criticized?",
    num: 12,
  ),
  Question(
    question: "Heart palpitations bother me when I am around people?",
    num: 13,
  ),
  Question(
    question: "I am afraid of doing things when people might be watching?",
    num: 14,
  ),
  Question(
    question: " Being embarrassed or looking stupid is among my worst fears?",
    num: 15,
  ),
  Question(
    question: "I avoid speaking to anyone in authority?",
    num: 16,
  ),
  Question(
    question: " Trembling or shaking in front of others is distressing to me?",
    num: 17,
    changeButton: false
  ),
];

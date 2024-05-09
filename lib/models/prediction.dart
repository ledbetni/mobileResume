import 'dart:math';

class Prediction {
  final Random random = Random();
  int? numAnswers;
  String? currentAnswer = "Reply hazy, try again";

  List<String> answers = [
    "It is decidedly so",
    "Maybe indeed",
    "As I see it, yes",
    "Reply hazy, try again",
    "Concentrate and ask again",
    "The future is uncertain",
    "Don't count on it",
    "Signs point to yes"
  ];

  Prediction({this.numAnswers = 8});

  void randomAnswer() {
    int randomIndex = random.nextInt(numAnswers!);
    currentAnswer = answers[randomIndex];
  }
}

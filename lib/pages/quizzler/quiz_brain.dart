import 'package:first_demo_app/pages/quizzler/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(q: 'Approximately one quarter of human bones are in the feet.', a: true),
    Question(q: 'A slug\'s blood is green.', a: true)
  ];

  String? getQuestionText() {
    return _questionBank[_questionNumber].question;
  }

  bool? getCorrectAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  int questionCount() {
    return _questionBank.length;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length) {
      _questionNumber++;
    }
    if (_questionNumber >= _questionBank.length) {
      _questionNumber = 0;
    }
  }
}

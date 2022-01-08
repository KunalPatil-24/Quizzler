import 'questions.dart';

class QuizBrain {
  int _questionNum = 0;

  List<Questions> _questionBank = [
    Questions(
        'USA and Canada share the largest land border in the world', true),
    Questions('India is the 6th largest country by land mass', false),
    Questions('Femur is the longest bone in human body', true),
    Questions('hame college degree pdf format milegi :\'(', true),
    Questions('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Questions('Iran possess Nuclear Weapons', false),
    Questions('India has 2nd Largest Muslim population in the world', true),
    Questions(
        'There is a Super Massive black hole at center of every galaxy and at milkyway\'s center it is Sagitarius A* ',
        true),
    Questions('Hamara college jeevan ghar pe hi jaa raha hai :( ', true),
    Questions(
        'India is Currently 6th largest economy(3.1T dollar) and is projected to be 3rd by 2030(8.5T dollor)',
        true),
    Questions('In Mahabharat, Kunti had 5 sons', false),
    Questions('ABV-IIITM Gwalior is world\'s most thandi college', true),
    Questions('Google has largest market cap in the world', false),
  ];

  void nextQuestion() {
    if (_questionNum < _questionBank.length - 1) {
      _questionNum++;
    } else {}
  }

  String getQuestionText() {
    return _questionBank[_questionNum].question;
  }

  bool getAnswer() {
    return _questionBank[_questionNum].answer;
  }

  bool isFinished() {
    if (_questionNum < _questionBank.length - 1) {
      return false;
    } else {
      return true;
    }
  }

  void reset() {
    _questionNum = 0;
  }
}

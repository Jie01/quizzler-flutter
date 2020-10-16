import 'question.dart';

class QuizBrain {
  int _qnum = 0;
  List<Question> _qa = [
    Question(qtext: 'Some cats are actually allergic to humans', ans: true),
    Question(
        qtext: 'You can lead a cow down stairs but not up stairs.', ans: false),
    Question(
        qtext: 'Approximately one quarter of human bones are in the feet.',
        ans: true),
    Question(qtext: 'A slug\'s blood is green.', ans: true),
    Question(
        qtext: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', ans: true),
    Question(
        qtext: 'It is illegal to pee in the Ocean in Portugal.', ans: true),
    Question(
        qtext:
            'No piece of square dry paper can be folded in half more than 7 times.',
        ans: false),
    Question(
        qtext:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        ans: true),
    Question(
        qtext:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        ans: false),
    Question(
        qtext:
            'The total surface area of two human lungs is approximately 70 square metres.',
        ans: true),
    Question(qtext: 'Google was originally called \"Backrub\".', ans: true),
    Question(
        qtext:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        ans: true),
    Question(
        qtext:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        ans: true),
  ];

  nq() {
    if (_qnum < _qa.length - 1) {
      _qnum++;
    } else {
      _qnum = 0;
      return false;
    }
  }

  String current() {
    var a = '${_qnum + 1} / ${_qa.length}';
    return a;
  }

  String getqtext() {
    return _qa[_qnum].qtext;
  }

  bool getans() {
    return _qa[_qnum].ans;
  }
}

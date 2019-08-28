import 'package:quizzler/question.dart';


class QuestionBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    new Question(q: 'Some cats are actually allergic to humans', a: true),
    new Question(
        q: 'You can lead a cow down stairs but not up stairs.', a: false),
    new Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    new Question(q: 'A slug\'s blood is green.', a: true),
    new Question(
        q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a: true),
    new Question(q: 'It is illegal to pee in the Ocean in Portugal.', a: true),
    new Question(
        q: 'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    new Question(
        q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        a: true),
    new Question(
        q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    new Question(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    new Question(q: 'Google was originally called \"Backrub\".', a: true),
    new Question(
        q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true),
    new Question(
        q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        a: true),
  ];
  void nextQuestion(){
  //  print("******qn"+_questionNumber.toString()+ "length "+_questionBank.length.toString());
    if(_questionNumber<_questionBank.length-1){
      _questionNumber++;
    }
  }
  String getQuestionText(){
   return  _questionBank[_questionNumber].questionText;

  }
  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
  int questionBankLength(){
    return _questionBank.length;
  }
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;

  }
}

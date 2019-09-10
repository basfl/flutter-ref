import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int hight;
  double _bmi;
  CalculatorBrain({this.weight, this.hight});
  String calculateBMI() {
    _bmi = this.weight / pow(this.hight / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return "You have higher than normal BMI,Try to exercise more!";
    } else if (_bmi > 18.5) {
      return "You have normal BMI";
    } else {
      return "You have lower than normal BMI";
    }
  }
}

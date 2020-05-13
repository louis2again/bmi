import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight!';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Are you perhaps Fatty Louis? You have a higher than mormal body weight you loser! Try to exercise more and eat less!';
    } else if (_bmi >= 18.5) {
      return 'Are you perhaps Samantha? You have a normal body weight. Good job and well done!';
    } else {
      return 'Are you perhaps Daniel? You have a lower than normal body weight. You can eat more just don\'t tell Fatty Louis!';
    }
  }
}

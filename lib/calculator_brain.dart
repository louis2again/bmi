import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight! Are you perhaps Fatty Louis?';
    } else if (_bmi > 18.5) {
      return 'Normal Are you perhaps Samantha?';
    } else {
      return 'Underweight Are you perhaps Daniel?';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than mormal body weight you loser! Try to exercise more and eat less!';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat more just don\'t tell Fatty Louis!';
    }
  }
}

import 'dart:math';

class Bmicalculator {
  Bmicalculator({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculatebmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String Getresult() {
    if (_bmi >= 25) {
      return 'Overwight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String Getinterception() {
    if (_bmi >= 25) {
      return "You have higher than normal body weight.Try to excercise more.";
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight.Good job!';
    } else {
      return 'You have a lower than normal body weight.You can eat a bit more';
    }
  }
}

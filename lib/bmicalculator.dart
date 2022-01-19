import 'dart:math';

class BmiCalculator {
  BmiCalculator({this.weight,this.height});
  int height;
  int weight;
  double _bmi;

  String calculatebmi(){
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String condition(){
    if(_bmi>=25){
      return 'Overweight';
    }
    else if(_bmi >18.5){
      return 'Normal';
    }
    else{
      return 'Under weight';
    }
  }

  String todo(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight.Try to exercise more';
    }
    else if(_bmi >18.5){
      return 'You have normal body weight.Good job';
    }
    else{
      return 'You have less than normal body weight. You can eat a bit more';
    }
  }

}

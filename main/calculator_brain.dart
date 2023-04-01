import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height,this.weight});
  final height ;
  final weight ;


 double _bmi = 0;

  String calculateBMI() {
   _bmi = weight / pow(height/100, 2);
        return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25){
      return 'Over-Weight';
    }
    else if (_bmi >=18.5){
    return 'normal';
    }
    else{
      return 'Under-Weight';
    }
  }


String getInterpretation(){
  if (_bmi >= 25){
    return 'You have a body weight more than normal, Exercise more!';
  }
  else if (_bmi>=18.5){
    return 'You have a normal body weight. Good Job King!';
  }
  else{
    return 'You have a body weight less than normal, Eat More!';
  }
}
}



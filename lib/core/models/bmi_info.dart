import 'dart:math';

import 'package:bmi_calculator/core/enums/bmi_result_enum.dart';
import 'package:bmi_calculator/core/enums/gender_enum.dart';

class BmiInfo {
  GenderEnum? gender;
  int height = 180;
  int weight = 80;
  int age = 30;
  
  late double bmi;
  late BmiResultEnum result;

  void calculateBmi() {
    bmi = weight / pow(height / 100, 2);
    _setResult();
  }

  void _setResult() {
    result = bmi >= 25 ? BmiResultEnum.overweight : bmi >= 18.5 ? BmiResultEnum.normal : BmiResultEnum.underweight;
  }

  String getBmiAsString() {
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    return result.result;
  }

  String getInterpretation() {
    return result.interpretation;
  }
}
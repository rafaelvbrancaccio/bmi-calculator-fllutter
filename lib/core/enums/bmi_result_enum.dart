enum BmiResultEnum {
  underweight,
  normal,
  overweight,
}

extension BmiResultEnumResult on BmiResultEnum {
  String get result {
    switch (this) {
      case BmiResultEnum.underweight:
        return 'Underweight';
      case BmiResultEnum.normal:
        return 'Normal';
      case BmiResultEnum.overweight:
        return 'Overweight';
    }
  }
}

extension BmiResultEnumInterpretation on BmiResultEnum {
  String get interpretation {
    switch (this) {
      case BmiResultEnum.underweight:
        return 'You have a lower than normal body weight. You can ear a bit more.';
      case BmiResultEnum.normal:
        return 'You have a normal body weight. Good Job!';
      case BmiResultEnum.overweight:
        return 'You have a higher than normal body weight. Try to exercise more.';
    }
  }
}
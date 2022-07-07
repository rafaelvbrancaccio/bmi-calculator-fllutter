import 'package:bmi_calculator/core/constants.dart';
import 'package:bmi_calculator/core/models/bmi_info.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ResultsPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ResultsPage({required this.bmiInfo});

  final BmiInfo bmiInfo;  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kReusableCardBackgroundColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiInfo.getResult().toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiInfo.getBmiAsString(),
                    style: kBmiTextStyle,
                  ),
                  Text(
                    bmiInfo.getInterpretation(),
                    style: kLabelTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(buttonLabel: 'RE-CALCULATE', onTap: () {
            Navigator.pop(context);
          },),
        ],
      ),
    );
  }
}

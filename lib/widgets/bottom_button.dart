import 'package:bmi_calculator/core/constants.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class BottomButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const BottomButton({required this.buttonLabel, required this.onTap});

  final String buttonLabel;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kPrimaryPink,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child:  Center(
          child: Text(
            buttonLabel,
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}

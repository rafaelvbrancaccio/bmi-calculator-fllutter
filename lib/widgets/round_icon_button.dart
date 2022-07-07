// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:bmi_calculator/core/constants.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class RoundIconButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const RoundIconButton({required this.onPressed, this.icon});

  final IconData? icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
      shape: const CircleBorder(),
      fillColor: kPrimaryButtonColor,
      textStyle: const TextStyle(color: Colors.white),
      child: Icon(icon),
    );
  }
}
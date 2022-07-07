import 'package:bmi_calculator/core/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const IconContent({required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: kPrimaryContentColor,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelTextStyle
        ),
      ],
    );
  }
}
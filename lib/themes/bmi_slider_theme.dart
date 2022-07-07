import 'package:bmi_calculator/core/constants.dart';
import 'package:flutter/material.dart';
import '../core/constants.dart';

const kBmiSliderTheme = SliderThemeData(
  trackHeight: 1.0,
  activeTrackColor: Colors.white,
  inactiveTrackColor: kPrimaryContentColor,
  thumbColor: kPrimaryPink,
  overlayColor: kPrimaryPinkOverlay,
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
);

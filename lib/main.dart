import 'package:bmi_calculator/core/models/bmi_info.dart';
import 'package:bmi_calculator/pages/input_page.dart';
import 'package:bmi_calculator/pages/results_page.dart';
import 'package:flutter/material.dart';
import 'themes/bmi_slider_theme.dart';

void main() => runApp(BMICalculator());

// ignore: use_key_in_widget_constructors
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // BmiRoutes routes = BmiRoutes(context: context);

    final ThemeData theme = ThemeData();
    // final TextTheme textTheme = TextTheme();

    return MaterialApp(
      title: 'Bmi Calculator',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: const Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme: Typography.whiteCupertino,
        sliderTheme: kBmiSliderTheme,
        // textTheme: textTheme.copyWith(
        //   bodyText1: const TextStyle(color: Colors.white),
        // ),
      ),
      // home: InputPage(),
      initialRoute: '/',
      // routes: routes.kBmiRoutes,
      routes: {
        '/': (context) => InputPage(),
        // '/results': (context) => ResultsPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/results') {
          final arguments = settings.arguments as BmiInfo;
          return MaterialPageRoute(
            builder: (context) {
              return ResultsPage(bmiInfo: arguments);
            },
          );
        }
      },
    );
  }
}


import 'package:bmi_calc/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme.fromSeed(
      brightness: MediaQuery.platformBrightnessOf(context),
      seedColor: Colors.indigo,
    );

    return MaterialApp(
      title: "BMI Calculator",
      theme: ThemeData(
        colorScheme: colorScheme,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: colorScheme.onPrimary,
          foregroundColor: colorScheme.tertiary,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: const InputPage(),
    );
  }
}

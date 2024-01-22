import 'package:calculator_app/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

class CalcApp extends StatelessWidget {
  const CalcApp(
    {
      super.key,
      }
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        fontFamily: 'Noto',
      ),
      home: const CalculatorScreen(),
    );
  }
}

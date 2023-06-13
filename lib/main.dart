
import 'package:flutter/material.dart';
import 'package:bmi/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        canvasColor: Color(0xFF99A98F)
      ),

      home: InputPage(),
    );
  }
}



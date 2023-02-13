import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light().copyWith(primary: Color(0xFF090C22)).copyWith(secondary: Colors.cyan),
        scaffoldBackgroundColor: Color(0xFF090C22),
        textTheme: TextTheme(bodyLarge:TextStyle(color: Colors.white), bodyMedium: TextStyle(color: Colors.white) )
      ),
      home: InputPage(),
    );
  }
}



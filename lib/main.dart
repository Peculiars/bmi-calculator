import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main(){
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff0a0e21),
        scaffoldBackgroundColor: const Color(0xff0a0e21)
      ),
    );
  }
}


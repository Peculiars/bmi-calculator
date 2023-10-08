import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/reuse_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class Resultpage extends StatelessWidget {
  const Resultpage(this.bmiResult, this.resultText, this.interpretation, {super.key} );
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0a0e21),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text('Your Result',
              style: kTitleTextStyle,
              ),
            ),
            ),
              Expanded(
              flex: 5,
              child: ReUseCard(
                kActiveCardColor, 
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(),
                    style: kResultTextStyle,
                    ),
                    Text(bmiResult,
                    style: kBMITextStyle,),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(interpretation,
                      textAlign: TextAlign.center,
                      style: kResultBodyTextStyle,),
                    ),
                    
                  ],
                )
                )
              ),
              BottomButton(() { 
                      Navigator.pop(context);
                    }, 
                    'RE-CALCULATE')
        ],
      ),
    );
  }
}
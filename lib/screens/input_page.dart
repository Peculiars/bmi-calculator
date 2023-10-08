import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reuse_card.dart';
import '../components/constants.dart';
import '../components/bottom_button.dart';
import '../components/round_icon_button.dart';
import 'package:bmi_calculator/components/calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage ({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage > {

   Gender? userGender;

   int height = 180;
   int weight = 60;
   int age = 23;

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
      body:  Column(
        children: [
            Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        userGender = Gender.male;
                      });
                    },
                    child: ReUseCard(
                      userGender == Gender.male ? kActiveCardColor : kInactiveCardColor, 
                    const IconComponent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                  ),

                   Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        userGender = Gender.female;
                      });
                    },
                    child: ReUseCard(
                      userGender == Gender.female ? kActiveCardColor : kInactiveCardColor, 
                      const IconComponent(
                        FontAwesomeIcons.venus, 'FEMALE'
                        ),
                      ),
                  )
                  ),
              ],
            ),
            ),


             Expanded(
                  child: ReUseCard(
                    kActiveCardColor, 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('HEIGHT',
                        style: klabelTextStyle,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(height.toString(),
                            style: kNumberTextStyle
                            ),
                            const Text('cm',
                            style: klabelTextStyle),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15.0),
                              overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0)
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            activeColor: const Color(0xffeb1555),
                            inactiveColor: const Color(0xff8d8e98),
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),

                   Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUseCard(
                    kActiveCardColor,
                     Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('WEIGHT',
                        style: klabelTextStyle),
                        Text(weight.toString(),
                         style: kNumberTextStyle
                         ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             RoundIconButton(
                              FontAwesomeIcons.minus,
                              (){
                                setState(() {
                                  weight--;
                                });
                              }
                              
                             ),
                             const SizedBox(width: 10.0),
                             RoundIconButton(
                              FontAwesomeIcons.plus,
                              (){
                                setState(() {
                                  weight++;
                                });
                              }
                             ),
                           ],
                         )
                      ],
                     ),
                     ),
                  ),

                   Expanded(
                  child: ReUseCard(
                    kActiveCardColor, 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('AGE',
                        style: klabelTextStyle),
                        Text(age.toString(),
                         style: kNumberTextStyle
                         ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             RoundIconButton(
                              FontAwesomeIcons.minus,
                              (){
                                setState(() {
                                  age--;
                                });
                              }
                             ),
                             const SizedBox(width: 10.0),
                             RoundIconButton(
                              FontAwesomeIcons.plus,
                              (){
                                setState(() {
                                  age++;
                                });
                              }
                             ),
                           ],
                         )
                      ],
                     ),
                    )
                  ),
              ],
            ),
                  ),
            BottomButton(
              () {
                CalculatorBrain calc = CalculatorBrain(height, weight);
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context)=> Resultpage(
            calc.calculateBMI(),
            calc.getResult(),
            calc.getInterpretation()
          )),);
      },
      'CALCULATE'
            ), 
        ],
      ),
    );
  }
}









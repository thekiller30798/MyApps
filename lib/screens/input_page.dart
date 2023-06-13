// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../components/icon_content.dart';
import '../components/card.dart';
import 'package:bmi/components/constans.dart';
import 'results_page.dart';
import 'package:bmi/components/Buttons.dart';
import 'package:bmi/calculator_brain.dart';


enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 190;
  int weight = 50;
  int age = 14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
                  style: TextStyle(color: Color(0xFF213555)),
                  'BMI CALCULATOR')),
          backgroundColor: inactiveCardColor,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: card(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      iconColor: Colors.blueAccent,
                      iconChange: FontAwesomeIcons.mars,
                      textChange: ('MALE'),
                    ),
                  ),
                ),
                Expanded(
                    child: card(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: IconContent(
                    iconColor: Colors.pink,
                    textChange: ('FEMALE'),
                    iconChange: FontAwesomeIcons.venus,
                  ),
                )),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: card(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: labelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(height.toString(), style: NumberTextStyle),
                            Text(
                              'cm',
                              style: labelTextStyle,
                            ),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          inactiveColor: Color(0xFFFFF8DE),
                          activeColor: Color(0xFF99A98F),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.toInt();
                            });
                          },
                        ),
                      ],
                    ),
                    colour: inactiveCardColor,
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: card(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: labelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: NumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconShape(
                              onLongPressed: (){
                                setState(() {
                                    weight++;
                                });
                              },
                              onPressed: () {
                                setState(() {

                                    weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                            SizedBox(width: 15.0),
                            RoundIconShape(
                              onLongPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: inactiveCardColor,
                  ),
                ),
                Expanded(
                  child: card(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: labelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: NumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconShape(
                              onLongPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                            SizedBox(width: 15.0),
                            RoundIconShape(
                              onLongPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: inactiveCardColor,
                  ),
                )
              ],
            ),),
            ButtomButton(
              buttonTiltle: 'CALCULATE',
              onTap: () {
                CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => ResulsPage(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interPretation: calc.getInterpretation(),
                    ),
                  ),
                );
              },
            ),
          ],
        ));
  }
}



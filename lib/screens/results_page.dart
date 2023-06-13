// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi/components/card.dart';
import 'package:bmi/components/constans.dart';
import 'package:flutter/material.dart';
import 'package:bmi/components/Buttons.dart';


class ResulsPage extends StatelessWidget {
  ResulsPage({required this.bmiResult,required this.interPretation,required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interPretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: inactiveCardColor,
        title: Text('BMI CALCULATOR',style: TextStyle(color: Color(0xFF213555)),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Container(
            child: Center(child: Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: Text('Your Result',style: TextStyle(fontSize: 50.0,color: MainTextColor),),
            )),
          )),
          Expanded(
            flex: 5,
          child: card(colour: inactiveCardColor,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(resultText,style: TextStyle(color: Colors.green,fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
              Text(bmiResult,style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold,color: MainTextColor),textAlign: TextAlign.center,),
              Text(interPretation,textAlign: TextAlign.center,style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),)
            ],
          ),),
          ),
          ButtomButton(buttonTiltle: 'RE-CALCULATE',
          onTap: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}

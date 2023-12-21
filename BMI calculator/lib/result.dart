// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:project10/const.dart';
import 'bottom_cal.dart';
import 'card.dart';
import 'input.dart';

class ResultPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  ResultPage(
      {required this.bmiResult,
      required this.interPretation,
      required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interPretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            // ignore: avoid_unnecessary_containers
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Extract(
              color: color1,
              child1: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText,
                    //  resultText!.toUpperCase(),
                    style: TextStyle(color: Colors.green, fontSize: 30),
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(
                        fontSize: 100,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    interPretation,
                    style: styles,
                  ),
                ],
              ),
            ),
          ),
          Cal(
            Tap: () {
              // Navigator.pushNamed(context, 'page2');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyTest()));
            },
            bTitle: 'RECALCULATOR',
          )
        ],
      ),
    );
  }
}

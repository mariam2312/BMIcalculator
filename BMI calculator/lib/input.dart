// @dart=2.9
// ignore_for_file: use_key_in_widget_constructors, unnecessary_const, prefer_const_constructors_in_immutables, prefer_const_constructors, duplicate_ignore, non_constant_identifier_names, missing_return, void_checks

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project10/card.dart';
import 'bottom_cal.dart';
import 'card.dart';
//import 'calculation.dart';
import 'create_button.dart';
import 'icon.dart';
import 'const.dart';
import 'result.dart';
import 'calculation.dart';

enum genderType { male, female }

class MyTest extends StatefulWidget {
  MyTest();

  @override
  State<StatefulWidget> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  genderType select;
  int height = 180;
  int weight = 60;
  int age = 30;
  //Color male = color2;
  //Color female = color2;

  // ignore: avoid_types_as_parameter_names
  /*void changeColor(genderType select) {
    //gender male=1, female=2
    if (select == genderType.male) {
      if (male == color2) {
        male = color1;
        female = color2;
      } else {
        male = color2;
      }
    }
    if (select == genderType) {
      if (female == color2) {
        female = color1;
        male = color2;
      } else {
        female = color2;
      }
    }
  }
 */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Extract(
                      press: () {
                        setState(() {
                          select = genderType.male;
                        });
                      },
                      color: select == genderType.male ? color1 : color2,
                      child1: Build(
                        icon: (FontAwesomeIcons.mars),
                        text: 'MALE',
                      )),
                ),
                Expanded(
                  child: Extract(
                    press: () {
                      setState(() {
                        select = genderType.female;
                      });
                    },
                    color: select == genderType.female ? color1 : color2,
                    child1: Build(
                      icon: (FontAwesomeIcons.venus),
                      text: 'FEMALE',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Extract(
              color: color1,
              child1: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HIGHT',
                    style: styles,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(height.toString(), style: style2),
                      Text(
                        'cm',
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        thumbColor: Color(0XFFEB1555),
                        activeTrackColor: Color(0XFFEB1555),
                        inactiveTrackColor: Color(0XFF8D8E98),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                        overlayColor: Color(0x29EB1555)),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Extract(
                    color: color1,
                    child1: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: styles,
                        ),
                        Text(weight.toString(), style: style2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Button(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Button(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                /*FloatingActionButton(
                              heroTag: 'minWeight',
                              backgroundColor: Color(0XFF4C4F5E),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(
                                Icons.minimize,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              heroTag: 'plusWeight',
                              backgroundColor: Color(0XFF4C4F5E),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )
                          ],
                          
                        )
                        ),
                      ],*/

                Expanded(
                  child: Extract(
                    color: color1,
                    child1: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: styles,
                        ),
                        Text(age.toString(), style: style2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Button(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Button(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Cal(
            bTitle: 'CALCULATE',
            Tap: () {
              // Navigator.pushNamed(context, 'page2');
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              //calc.getResulting();
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultPage(
                  bmiResult: calc.calculateBMI(),
                  resultText: calc.getResult(),
                  interPretation: calc.getInterpretation(),
                );
              }));
            },
          ),
        ],
      ),
    );
  }
}

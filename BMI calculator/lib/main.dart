// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
// @dart=2.9
import 'package:flutter/material.dart';
import 'input.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: MyTest(),
      /*initialRoute: 'page1',
      routes: {
        'page1': (context) => const MyTest(),
        'page2': (context) => const Result()
      },*/
    );
  }
}

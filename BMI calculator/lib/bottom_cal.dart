// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, duplicate_ignore, prefer_const_constructors
// @dart=2.9
import 'package:flutter/material.dart';

class Cal extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Function() Tap;
  final String bTitle;
  // ignore: use_key_in_widget_constructors
  Cal({this.Tap, this.bTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Tap,
      child: Container(
        color: const Color(0XFFEB1555),
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 80,
        // ignore: prefer_const_constructors
        child: Center(
          child: Text(
            bTitle,
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

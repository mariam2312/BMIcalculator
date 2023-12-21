// ignore_for_file: prefer_const_constructors_in_immutables
// @dart=2.9
import 'package:flutter/material.dart';
import 'const.dart';

//male & female
class Build extends StatelessWidget {
  final String text;
  final IconData icon;

  // ignore: use_key_in_widget_constructors
  Build({this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 18,
        ),
        Text(text, style: styles)
      ],
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable
// @dart=2.9
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final IconData icon;
  Function() onPressed;
  Button({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
      child: Icon(icon),
    );
  }
}

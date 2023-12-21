// @dart=2.9
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Extract extends StatelessWidget {
  final Color color;
  final Widget child1;
  Function() press;
//border ,frame .
  // ignore: invalid_required_positional_param, prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Extract({this.color, this.child1, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: child1,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
      ),
    );
  }
}

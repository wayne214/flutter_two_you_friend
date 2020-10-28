import 'package:flutter/material.dart';

class TextStyles {
  static double baseFontSize = 18.0;

  static TextStyle commonStyle(
      [double multipleFontSize = 1, Color myColor = Colors.lightBlueAccent]) {
    return TextStyle(
        color: myColor,
        fontSize: baseFontSize * multipleFontSize,
        letterSpacing: 1,
        wordSpacing: 2,
        height: 1.2);
  }
}

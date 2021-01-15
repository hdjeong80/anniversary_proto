import 'package:flutter/material.dart';
import 'custom_color.dart';

var customThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: CustomColors.orange,
  accentColor: CustomColors.orange,
);

class CustomTextStyles {
  static const heading1 = TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.bold,
  );
  static const heading2 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const heading3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const content = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: CustomColors.orange,
  );
}

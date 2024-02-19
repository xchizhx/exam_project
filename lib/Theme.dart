import 'package:flutter/material.dart';

var theme = ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto",
          color: Color.fromARGB(255, 58, 58, 58)
      ),
      titleMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto",
          color: Color.fromARGB(255, 167, 167, 167)
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 5, 96, 250),
            disabledBackgroundColor: Color.fromARGB(255, 167, 167, 167),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)))));

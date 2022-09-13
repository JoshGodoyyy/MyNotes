import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: "Poppins",
  primaryColor: Colors.white,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.black),
  ),
  shadowColor: Colors.blue.withOpacity(0.5),
  focusColor: Colors.blue[600],
  hintColor: Colors.black54,
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: "Poppins",
  shadowColor: null,
  focusColor: Colors.white,
  hintColor: Colors.white60,
);

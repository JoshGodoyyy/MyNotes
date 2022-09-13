import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: "Poppins",
  primaryColor: Colors.white,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontFamily: "Poppins",
    ),
  ),
  shadowColor: Colors.blue.withOpacity(0.5),
  focusColor: Colors.blue[600],
  hintColor: Colors.black54,
  cardColor: const Color(0xFFe1e1ea),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(const Color(0xFF71b8ff)),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: "Poppins",
  shadowColor: null,
  focusColor: Colors.white,
  hintColor: Colors.white60,
  cardColor: const Color(0xFF393939),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.white60),
    ),
  ),
);

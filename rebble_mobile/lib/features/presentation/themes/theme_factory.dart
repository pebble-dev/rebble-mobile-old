import 'package:flutter/material.dart';

class ThemeFactory {
  static Color color1 = Color(0xFF363636);
  static Color color2 = Color(0xFF4A4A4A);
  static Color color3 = Color(0xFFF95625);

  static Color color4 = Color(0xFF0DA781);
  static Color color5 = Color(0xFF0D9C7C);
  static Color color6 = Color(0xFF0B8B74);
  static Color color7 = Color(0xFF14FFA9);
  static Color color8 = Color(0xFFFFFF00);

  static Color color9 = Color(0xFF115C90);
  static Color color10 = Color(0xFF0E5186);
  static Color color11 = Color(0xFF09477D);
  static Color color12 = Color(0xFF0C4E84);
  static Color color13 = Color(0xFF13C2FD);
  static Color color14 = Color(0xFF118CFF);
  static Color color15 = Color(0xFFFFFF00);

  static ThemeData get main => ThemeData(
        fontFamily: 'Roboto',
        primaryColor: color2,
        accentColor: color3,
        cardColor: color4,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: color1,
        bottomAppBarTheme: BottomAppBarTheme(
          color: color2,
        ),
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 18),
          body2: TextStyle(fontSize: 16),
          button: TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold),
          headline: TextStyle(fontWeight: FontWeight.bold),
          subhead: TextStyle(color: Colors.grey),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.black,
        ),
      );
}

import 'package:flutter/material.dart';

const primaryColor = Color(0xff0c2461);
const secondaryColor = Color(0xffECF2FA);

class AppTheme {
  ThemeData call() {
    return theme;
  }

  ThemeData get theme {
    return ThemeData(
      primaryColor: primaryColor,
      secondaryHeaderColor: secondaryColor,
      iconTheme: const IconThemeData(color: Colors.white),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: Colors.white, fontFamily: 'Patua One'),
        displayMedium: TextStyle(color: Colors.white, fontFamily: 'Patua One'),
        headlineMedium: TextStyle(
          color: primaryColor,
          fontFamily: 'Patua One',
          fontSize: 50,
        ),
        titleMedium: TextStyle(
          color: Colors.white,
          fontFamily: 'Baloo 2',
          fontSize: 30,
        ),
        titleSmall: TextStyle(
          color: primaryColor,
          fontFamily: 'Patua One',
          fontSize: 30,
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontFamily: 'Baloo 2',
          fontSize: 40,
        ),
      ),
    );
  }
}

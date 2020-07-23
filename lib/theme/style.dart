import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  // The code below is a private constructor, such that the
  // AppStyle becomes a singleton, hence only onw instances can
  // be made of it
  AppStyle._();

  static const _primary_blue = Color.fromRGBO(58, 64, 90, 1.0);
  static const _secondary_blue = Color.fromRGBO(77, 83, 107, 1.0);
  static const _primary_green = Color.fromRGBO(75, 153, 128, 1.0);
  static const _secondary_green = Color.fromRGBO(129, 178, 154, 1.0);
  static const _tertiary_green = Color.fromRGBO(163, 209, 189, 1.0);
  static const _primary_red = Color.fromRGBO(224, 122, 95, 1.0);
  static const _secondary_red = Color.fromRGBO(230, 143, 115, 1.0);
  static const _primary_orange = Color.fromRGBO(245, 173, 66, 1.0);

  static final ThemeData lighTheme = ThemeData(
    scaffoldBackgroundColor: _primary_green,
    appBarTheme: AppBarTheme(
      color: _primary_blue,
    ),
    colorScheme: ColorScheme.light(
      primary: _secondary_green,
      primaryVariant: _tertiary_green,
      secondary: _primary_blue,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: _secondary_green,
    ),
    iconTheme: IconThemeData(color: _primary_green),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: _primary_orange,
        fontSize: 40,
        fontFamily: GoogleFonts.dancingScript().fontFamily,
      ),
      headline2: TextStyle(
        color: _primary_orange,
        fontSize: 35,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      headline3: TextStyle(
        color: _primary_orange,
        fontSize: 30,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      headline4: TextStyle(
        color: _primary_orange,
        fontSize: 25,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      subtitle1: TextStyle(
        color: _primary_orange,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      bodyText1: TextStyle(
        color: _primary_orange,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
    ),
  );
}

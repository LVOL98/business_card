import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  //AppTheme._(); // What does this do?
  static const _primary_blue = Color.fromRGBO(58, 64, 90, 1.0);
  static const _secondary_blue = Color.fromRGBO(77, 83, 107, 1.0);
  static const _primary_green = Color.fromRGBO(75, 153, 128, 1.0);
  static const _secondary_green = Color.fromRGBO(129, 178, 154, 1.0);
  static const _tertiary_green = Color.fromRGBO(163, 209, 189, 1.0);
  static const _primary_red = Color.fromRGBO(224, 122, 95, 1.0);
  static const _secondary_red = Color.fromRGBO(230, 143, 115, 1.0);

  static final ThemeData lighTheme = ThemeData(
    scaffoldBackgroundColor: _primary_green,
    appBarTheme: AppBarTheme(
      color: _primary_blue,
      iconTheme: IconThemeData(
        color: Colors.white, // TODO
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: _secondary_green,
      onPrimary: Colors.white, // TODO
      primaryVariant: _tertiary_green,
      secondary: _primary_blue,
      secondaryVariant: Colors.white, // TODO
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: _secondary_green, // TODO reference secondary color
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontFamily: GoogleFonts.dancingScript().fontFamily,
      ),
      subtitle1: TextStyle(
        color: Colors.white,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      bodyText2: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}

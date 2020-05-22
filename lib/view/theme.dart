import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  /* AppTheme._(); // What does this do? */

  static final ThemeData lighTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromRGBO(75, 153, 128, 1),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.white, // TODO
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: const Color.fromRGBO(129, 178, 154, 1.0),
      onPrimary: Colors.white, // TODO
      primaryVariant: const Color.fromRGBO(163, 209, 189, 1.0),
      secondary: const Color.fromRGBO(58, 64, 90, 1.0),
      secondaryVariant: Colors.white, // TODO
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Color.fromRGBO(129, 178, 154, 1.0), // TODO reference secondary color
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

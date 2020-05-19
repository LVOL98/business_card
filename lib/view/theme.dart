import 'package:flutter/material.dart';

class AppTheme {
  /* AppTheme._(); // What does this do? */

  static final ThemeData lighTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.white, // TODO
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: const Color.fromRGBO(58, 64, 90, 1.0),
      onPrimary: Colors.white, // TODO
      primaryVariant: const Color.fromRGBO(77, 83, 107, 1.0),
      secondary: Color.fromRGBO(129, 178, 154, 1.0),
      secondaryVariant: Colors.white, // TODO
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
          color: Colors.pink
          ),
      subtitle1: TextStyle(
          color: Colors.yellow
          ),
      bodyText2: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}

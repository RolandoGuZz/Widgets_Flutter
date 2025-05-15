import 'package:flutter/material.dart';

class ThemeApp {
  static Color primary = Colors.pink;
  static Color darkColor = Colors.black;

  static ThemeData primaryTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: primary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primary,
        foregroundColor: Colors.white,
      ),
      iconTheme: IconThemeData(color: primary),
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ButtonStyle(backgroundColor: ),
      // )
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: darkColor,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: darkColor,
      ),
      iconTheme: IconThemeData(color: darkColor),
    );
  }
}

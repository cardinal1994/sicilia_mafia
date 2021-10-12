import 'package:flutter/material.dart';

import 'custom_colors.dart';

class AppThemes {
  final ThemeData themeDark = ThemeData.dark();
  final ThemeData themeLight = ThemeData.light();

  ThemeData setDarkTheme() {
    return themeDark.copyWith(
        appBarTheme: const AppBarTheme(
          //color: Color(0xFF121528),
          color: Color(0xFF1E1E20),
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
        //shadowColor: Colors.white,
        //scaffoldBackgroundColor: const Color(0xFF121528),
        scaffoldBackgroundColor: const Color(0xFF1E1E20),
        hintColor: CustomColors.grey[700],
        //cardColor: Color(0xFF333333),
        dividerColor: Colors.grey[100],
        errorColor: CustomColors.red[700],
        disabledColor: CustomColors.grey[700],
        highlightColor: Colors.black38,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            color: Colors.black,
          ),
        ),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.black));
  }

  ThemeData setLightTheme() {
    return themeDark.copyWith(
        appBarTheme: const AppBarTheme(
          color: Color(0xFFF4EBDB),
          centerTitle: true,
          foregroundColor: Colors.black,
        ),
        //shadowColor: Colors.white,
        scaffoldBackgroundColor: const Color(0xFFF4EBDB),
        hintColor: CustomColors.grey[700],
        //cardColor: Color(0xFF333333),
        dividerColor: Colors.grey[900],
        errorColor: CustomColors.red[700],
        disabledColor: CustomColors.grey[700],
        highlightColor: Colors.black38,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            color: Colors.black,
          ),
        ),
        colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Colors.white));
  }
}

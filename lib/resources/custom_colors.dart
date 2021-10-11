import 'package:flutter/material.dart';

class CustomColors {


  static const MaterialColor red = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      500: Color(_redPrimaryValue),
      700: Color(0xFFDE1306),
    },
  );
  static const int _redPrimaryValue = 0xFFF44336;

  static const MaterialColor grey = MaterialColor(
    _greyPrimaryValue,
    <int, Color>{
      300: Colors.black12,
      500: Color(_greyPrimaryValue),
      700: Color(0xFF7C7772),
    },
  );
  static const int _greyPrimaryValue = 0xFF98989E;

  static const MaterialColor black = MaterialColor(
    _blackPrimaryValue,
    <int, Color>{
      600: Color(0xFF212429),
      700: Color(0xFF1B1B1C),
      900: Color(_blackPrimaryValue),
    },
  );
  static const int _blackPrimaryValue = 0xFF000000;

  static const MaterialColor whiteOrange = MaterialColor(
    _whiteOrangePrimaryValue,
    <int, Color>{
      100: Color(0xFFF7EDE3),
      300: Color(_whiteOrangePrimaryValue),
      500: Color(0xFFfffcf9),
    },
  );
  static const int _whiteOrangePrimaryValue = 0xFFE2D7CD;

  static const MaterialColor peach = MaterialColor(
    _peachPrimaryValue,
    <int, Color>{
      100: Color(0xFFF5DC82),
      300: Color(_peachPrimaryValue),
    },
  );
  static const int _peachPrimaryValue = 0xFFF6DABD;
  static const MaterialColor cyan = MaterialColor(
    _cyanPrimaryValue,
    <int, Color>{
      100: Color(0xFF36cbc4),
      300: Color(_cyanPrimaryValue),
    },
  );
  static const int _cyanPrimaryValue = 0xFF07D0C6;
  static const MaterialColor orange = MaterialColor(
    _orangePrimaryValue,
    <int, Color>{
      100: Color(0xFFffb041),
      300: Color(_orangePrimaryValue),
    },
  );
  static const int _orangePrimaryValue = 0xFFFF9E13;

  static const MaterialColor green = MaterialColor(
    _greenDefaultValue,
    <int, Color>{
      300: Color(0xFF8BD0CC),
      500: Color(_greenDefaultValue),
    },
  );
  static const int _greenDefaultValue = 0xFFA9E6A0;
}
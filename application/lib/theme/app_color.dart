import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_color.g.dart';

@Riverpod(keepAlive: true)
AppColor appColor(ref) => AppColor();

class AppColor {
  MaterialColor primaryColor = const MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFE0F2F1),
      100: Color(0xFFB2DFDB),
      200: Color(0xFF80CBC4),
      300: Color(0xFF4DB6AC),
      400: Color(0xFF26A69A),
      500: Color(_primaryValue),
      600: Color(0xFF00897B),
      700: Color(0xFF00796B),
      800: Color(0xFF00695C),
      900: Color(0xFF004D40),
    },
  );
  MaterialColor secondaryColor =
      const MaterialColor(_secondaryValue, <int, Color>{
    500: Color(_secondaryValue),
  });
  MaterialAccentColor accentColor =
      const MaterialAccentColor(_accentValue, <int, Color>{
    100: Color(0xFF80CBC4),
    200: Color(_accentValue),
    400: Color(0xFF26A69A),
    700: Color(0xFF00796B),
  });
  Color backgroundColor = const Color(_backgroundValue);
  Color textColor = const Color(_textValue);

  static const int _primaryValue = 0xFF009688;
  static const int _secondaryValue = 0xFFE0F2F1;
  static const int _accentValue = 0xFFE0F2F1;
  static const int _backgroundValue = 0xFFE0F2F1;
  static const int _textValue = 0xFF000000;
}

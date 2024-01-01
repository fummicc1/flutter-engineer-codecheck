import 'package:flutter/foundation.dart';
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

  Color backgroundColor(Brightness brightness) {
    return brightness == Brightness.light
        ? const Color(_backgroundValueLight)
        : const Color(_backgroundValueDark);
  }

  Color textColor(Brightness brightness) {
    if (kDebugMode) {
      print(brightness);
    }
    return brightness == Brightness.light ? textColorLight : textColorDark;
  }

  Color textColorLight = const Color(_textValue);
  Color textColorDark = const Color(_textValueDark);

  static const int _primaryValue = 0xFF009688;
  static const int _backgroundValueLight = 0xFFE0F2F1;
  static const int _backgroundValueDark = 0xFF333E3D;
  // ignore: unused_field
  static const int _secondaryBackgroundValueLight = 0xFFA5B6B5;
  // ignore: unused_field
  static const int _secondaryBackgroundValueDark = 0xFF6A7A79;
  static const int _textValue = 0xFF000000;
  static const int _textValueDark = 0xFFF0F0F0;
}

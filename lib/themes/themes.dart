// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class Styles {
  Styles._();

  // Colors
  static const Color kcPrimaryColor = maincolor;
  // static const Color kcAppBarColor = Color(0xFF424242);

  // Themes

  static final ColorScheme _colorSchemelight =
      const ColorScheme.light().copyWith(
    primary: kcPrimaryColor,
  );

  // static final ColorScheme _colorSchemedark = const ColorScheme.dark().copyWith(
  //   primary: kcPrimaryColor,
  // );

  static final ThemeData lightTheme = ThemeData(
    colorScheme: _colorSchemelight,
    primaryColor: _colorSchemelight.primary,
    fontFamily: "Roboto",
    scaffoldBackgroundColor: Color(4294309113),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: _colorSchemelight.primary,
      selectionHandleColor: _colorSchemelight.primary,
    ),
    indicatorColor: _colorSchemelight.primary,
    secondaryHeaderColor: Colors.grey,
    radioTheme: RadioThemeData(),
    dialogTheme: DialogTheme(
        backgroundColor: Color(0xFF424242),
        contentTextStyle: TextStyle(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white)),
  );
}

import 'package:flutter/material.dart';
import 'package:loginpd/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:loginpd/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  // private constructor
  TAppTheme._();

  static const Color _primaryColor = Color(0xFF6E9360);
  static const Color _SecondaryColor = Color(0xFFA5D898);

  static ThemeData lightTheme = ThemeData(

    primarySwatch: MaterialColor(_primaryColor.value, const {
      50: Color(0xFFF2F7EE),
      100: Color(0xFFD9EED2),
      200: Color(0xFFBFE3B5),
      300: Color(0xFFA5D898),
      400: Color(0xFF8CCD7B),
      500: _primaryColor,
      600: Color(0xFF5D844F),
      700: Color(0xFF4C6A3E),
      800: Color(0xFF3B502D),
      900: Color(0xFF29361D),
    }),
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme:
    ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
    //outlinedButtonTheme: TOutlineButtonTheme.lightOutLinedButtonTheme,
    inputDecorationTheme:TTextFormFieldTheme.lightInputDecorationTheme,
  );


  static ThemeData darkTheme = ThemeData(
    primarySwatch: MaterialColor(_primaryColor.value, const {
      50: Color(0xFFF2F7EE),
      100: Color(0xFFD9EED2),
      200: Color(0xFFBFE3B5),
      300: _SecondaryColor,
      400: Color(0xFF8CCD7B),
      500: Color(0xFF6E9360),
      600: Color(0xFF5D844F),
      700: Color(0xFF4C6A3E),
      800: Color(0xFF3B502D),
      900: Color(0xFF29361D),
    }),
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
    inputDecorationTheme:TTextFormFieldTheme.darkInputDecorationTheme,
  );
}



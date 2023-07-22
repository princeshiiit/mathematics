import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

class ThemeHelper {

  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  PrimaryColors _getThemeColors() {

    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              2,
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0XFFFFFFFF),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: colorScheme.onPrimary,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(
              1,
            ),
          ),
        ),
      ),
      textTheme: TextTheme(
        bodySmall: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Lexend Deca',
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Karla',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.black900,
          fontSize: getFontSize(
            28,
          ),
          fontFamily: 'Oxygen',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Lexend Deca',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Karla',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Karla',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Oxygen',
          fontWeight: FontWeight.w700,
        ),
      ),
      visualDensity: VisualDensity.standard,
    );
  }

  PrimaryColors themeColor() => _getThemeColors();

  ThemeData themeData() => _getThemeData();
}

class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    onPrimary: Color(0XFF073545),
    shadow: Color(0XFF073545),
    onPrimaryContainer: Color(0XE5FFFFFF),
    onTertiary: Color(0XE5FFFFFF),
    scrim: Color(0XFF4D4D4D),
    primaryContainer: Color(0XFF4D4D4D),
    tertiaryContainer: Color(0XE5FFFFFF),
    secondaryContainer: Color(0XE5FFFFFF),
    error: Color(0XFF073545),
    onErrorContainer: Color(0XFF1E1E1E),
    outline: Color(0XFF073545),
    onSurfaceVariant: Color(0XFF073545),
    onBackground: Color(0XE5FFFFFF),
    outlineVariant: Color(0XFF4D4D4D),
    errorContainer: Color(0XFF808080),
    onSurface: Color(0XE5FFFFFF),
    onError: Color(0XFFF8F8F8),
    surface: Color(0XFF4D4D4D),
    onInverseSurface: Color(0XFFF8F8F8),
    onSecondaryContainer: Color(0XFF073545),
    tertiary: Color(0XFF4D4D4D),
    surfaceTint: Color(0XFF073545),
    onTertiaryContainer: Color(0XFF073545),
    surfaceVariant: Color(0XE5FFFFFF),
    inversePrimary: Color(0XFF4D4D4D),
    secondary: Color(0XFF4D4D4D),
    inverseSurface: Color(0XFF073545),
    background: Color(0XFF4D4D4D),
    onSecondary: Color(0XE5FFFFFF),
    primary: Color(0XFFF8F8F8),
  );
}

class PrimaryColors {
  Color get primaryVariant => Color(0XFF4D4D4D);
  Color get secondaryVariant => Color(0XE5FFFFFF);
  Color get black900 => Color(0XFF01010E);
  Color get black90001 => Color(0XFF01000D);
  Color get blueGray400 => Color(0XFF888888);
  Color get black90002 => Color(0XFF000000);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
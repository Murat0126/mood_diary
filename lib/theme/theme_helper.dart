import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";

LightCodeColors get appTheme => ThemeHelper().themeColor();

ThemeData get theme => ThemeHelper().themeData();

class ThemeHelper {
  final Map<String, LightCodeColors> _supportedCustomColor = {
    "lightCode": LightCodeColors()
  };
  final Map<String, ColorScheme> _supportedColorScheme = {
    "lightCode": ColorSchemes.lightCodeColorScheme,
  };

  void changeTheme(String newTheme) {
    _appTheme = newTheme;
  }

  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.white7002,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: appTheme.gray100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
            visualDensity: const VisualDensity(
              vertical: -4,
              horizontal: -4,
            ),
            padding: EdgeInsets.zero),
      ),
    );
  }

  LightCodeColors themeColor() => _getThemeColors();

  ThemeData themeData() => _getThemeData();
}

class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
            color: appTheme.gray400,
            fontSize: 14,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400),
        bodySmall: TextStyle(
            color: appTheme.blueGrey700,
            fontSize: 11,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400),
        headlineMedium: TextStyle(
            color: colorScheme.onPrimary,
            fontSize: 26,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w800),
        headlineSmall: TextStyle(
            color: appTheme.blueGrey700,
            fontSize: 24,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700),
        labelLarge: TextStyle(
            color: appTheme.blueGrey400,
            fontSize: 12,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600),
        labelMedium: TextStyle(
            color: appTheme.blueGrey700,
            fontSize: 10,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w500),
        titleLarge: TextStyle(
            color: appTheme.blueGrey400,
            fontSize: 20,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400),
        titleMedium: TextStyle(
            color: appTheme.blueGrey700,
            fontSize: 18,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w500),
        titleSmall: TextStyle(
            color: colorScheme.onPrimary,
            fontSize: 14,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700),
      );
}

class ColorSchemes {
  static const lightCodeColorScheme = ColorScheme.light(
    primary: Color(0xFFFF8702),
    onPrimary: Color(0xFF23232B),
    onPrimaryContainer: Color(0xFFE1DCD7),
  );
}

class LightCodeColors {
  Color get black900 => const Color(0xFF000000);

  Color get blueGrey300 => const Color(0xFF919EAB);

  Color get blueGrey400 => const Color(0xFF888888);

  Color get blueGrey700 => const Color(0xFF4C4C68);

  Color get deepPurple2001c => const Color(0x1CB6A1C0);

  Color get deepPurple2001c01 => const Color(0x1CB5A1C0);

  Color get gray100 => const Color(0xFFF2F2F2);

  Color get gray400 => const Color(0xFFBCBCBF);

  Color get white700 => const Color(0xFFFFFFFF);

  Color get white7001 => const Color(0xFFFFFDFB);

  Color get white7002 => const Color(0xFFFFFDFC);
}

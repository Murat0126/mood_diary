import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.25),
      );

  static BoxDecoration get fillWhite => BoxDecoration(
        color: appTheme.white7001,
      );

  static BoxDecoration get fillWhite700 => BoxDecoration(
        color: appTheme.white700,
      );

  static BoxDecoration get fillWhite7002 => BoxDecoration(
        color: appTheme.white7002,
      );

  static BoxDecoration get outlineDeepPurpleC => BoxDecoration(
        color: appTheme.white700,
        boxShadow: [
          BoxShadow(
            color: appTheme.deepPurple2001c01,
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(2, 4),
          )
        ],
      );

  static BoxDecoration get outlineDeepPurple2001C => BoxDecoration(
        color: appTheme.white700,
        boxShadow: [
          BoxShadow(
            color: appTheme.deepPurple2001c,
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(2, 4),
          )
        ],
      );

  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.white700,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2,
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius get circleBorder19 => BorderRadius.circular(19);

  static BorderRadius get roundedBorder13 => BorderRadius.circular(13);

  static BorderRadius get roundedBorder41 => BorderRadius.circular(41);
}

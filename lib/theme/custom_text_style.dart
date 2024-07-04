import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get nunito {
    return copyWith(fontFamily: 'Nunito',);
  }
}

class CustomTextStyle {
  static get bodyMediumBlueGrey700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGrey700,
      );

  static get bodySmallBlueGray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGrey300,
      );

  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGrey400,
      );

  static get bodySmallWhite700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.white700,
      );

  static get headLineMediumBlueGray => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.blueGrey700,
      );

  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );

  static get labelLargeMedium_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );

  static get labelLargeWhite700 => theme.textTheme.labelLarge!
      .copyWith(fontWeight: FontWeight.w500, color: appTheme.white700);

  static get labelMediumBlack_900 =>
      theme.textTheme.labelMedium!.copyWith(color: appTheme.black900);

  static get titleLargeWhite_700 =>
      theme.textTheme.titleLarge!.copyWith(color: appTheme.white700);

  static get titleMediumExtraBold => theme.textTheme.titleMedium!
      .copyWith(fontWeight: FontWeight.w800, fontSize: 16);

  static get titleMediumGray_400 => theme.textTheme.titleMedium!
      .copyWith(fontWeight: FontWeight.w600, color: appTheme.gray400);

  static get titleMediumGray_400Bold => theme.textTheme.titleMedium!.copyWith(
      fontWeight: FontWeight.w700, color: appTheme.gray400, fontSize: 16);

  static get titleMediumGray_400Bold1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
        color: appTheme.gray400,
      );

  static get titleSmallBlueGray_700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray400,
      );
}



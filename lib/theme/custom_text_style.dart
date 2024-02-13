import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGreen400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green400,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGreen500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green500,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 12.fSize,
      );
  // Title text style
  static get titleLargeffffffff => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumffffffff => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}

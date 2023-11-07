import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeGray50 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeIndigo50 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo50,
      );
  static get bodyMediumIndigo50 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigo50,
      );
  static get bodySmallBluegray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 12.fSize,
      );
}

extension on TextStyle {
  TextStyle get garamondPremierPro {
    return copyWith(
      fontFamily: 'Garamond Premier Pro',
    );
  }

  TextStyle get helveticaNeue {
    return copyWith(
      fontFamily: 'HelveticaNeue',
    );
  }
}

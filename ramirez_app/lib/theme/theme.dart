import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/// The [AppTheme] defines light and dark themes for the app.
///
/// Theme setup for FlexColorScheme package v8.
/// Use same major flex_color_scheme package version. If you use a
/// lower minor version, some properties may not be supported.
/// In that case, remove them after copying this theme to your
/// app or upgrade package to version 8.0.2.
///
/// Use in [MaterialApp] like this:
///
/// MaterialApp(
///  theme: AppTheme.light,
///  darkTheme: AppTheme.dark,
///  :
/// );
sealed class AppTheme {
  // The defined light theme.
  static ThemeData light = FlexThemeData.light(
  colors: const FlexSchemeColor( // Custom colors
    primary: Color(0xFF7A72D1),
    primaryContainer: Color(0xFFAFAAE3),
    primaryLightRef: Color(0xFF7A72D1),
    secondary: Color(0xFFFA7268),
    secondaryContainer: Color(0xFFFCAAA4),
    secondaryLightRef: Color(0xFFFA7268),
    tertiary: Color(0xFF66D2F3),
    tertiaryContainer: Color(0xFFA3E4F8),
    tertiaryLightRef: Color(0xFF66D2F3),
    appBarColor: Color(0xFFFCAAA4),
    error: Color(0xFFAE3436),
    errorContainer: Color(0xFFCF8587),
  ),
  subThemesData: const FlexSubThemesData(
    interactionEffects: true,
    tintedDisabledControls: true,
    useM2StyleDividerInM3: true,
    inputDecoratorIsFilled: true,
    inputDecoratorBorderType: FlexInputBorderType.outline,
    alignedDropdown: true,
    navigationRailUseIndicator: true,
    navigationRailLabelType: NavigationRailLabelType.all,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );
  // The defined dark theme.
  static ThemeData dark = FlexThemeData.dark(
  colors: const FlexSchemeColor( // Custom colors
    primary: Color(0xFF7A72D1),
    primaryContainer: Color(0xFFAFAAE3),
    primaryLightRef: Color(0xFF7A72D1),
    secondary: Color(0xFFFA7268),
    secondaryContainer: Color(0xFFFCAAA4),
    secondaryLightRef: Color(0xFFFA7268),
    tertiary: Color(0xFF66D2F3),
    tertiaryContainer: Color(0xFFA3E4F8),
    tertiaryLightRef: Color(0xFF66D2F3),
    appBarColor: Color(0xFFFCAAA4),
    error: Color(0xFFAE3436),
    errorContainer: Color(0xFFCF8587),
  ),
  subThemesData: const FlexSubThemesData(
    interactionEffects: true,
    tintedDisabledControls: true,
    blendOnColors: true,
    useM2StyleDividerInM3: true,
    inputDecoratorIsFilled: true,
    inputDecoratorBorderType: FlexInputBorderType.outline,
    alignedDropdown: true,
    navigationRailUseIndicator: true,
    navigationRailLabelType: NavigationRailLabelType.all,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );
}

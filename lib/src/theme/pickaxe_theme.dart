import 'package:flutter/material.dart';
import 'pickaxe_colors.dart';
import 'pickaxe_typography.dart';

class PickaxeTheme {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: PickaxeColors.background,
    primaryColor: PickaxeColors.primary,
    colorScheme: const ColorScheme.light(
      primary: PickaxeColors.primary,
      secondary: PickaxeColors.secondary,
      surface: PickaxeColors.background,
      error: PickaxeColors.error,
    ),
    textTheme: PickaxeTypography.textTheme,
    fontFamily: PickaxeTypography.fontFamily,
    useMaterial3: true,
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: PickaxeColors.background,
    primaryColor: PickaxeColors.primary,
    colorScheme: const ColorScheme.dark(
      primary: PickaxeColors.primary,
      secondary: PickaxeColors.secondary,
      surface: PickaxeColors.background,
      error: PickaxeColors.error,
    ),
    textTheme: PickaxeTypography.textTheme,
    fontFamily: PickaxeTypography.fontFamily,
    useMaterial3: true,
  );
}




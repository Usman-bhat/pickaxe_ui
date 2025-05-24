/*
import 'package:flutter/material.dart';

class PickaxeTypography {
  static const TextStyle displayLarge = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 57,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle displayMedium = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 45,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle displaySmall = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 36,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle headlineLarge = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 32,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 28,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle titleLarge = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle titleSmall = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle labelLarge = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: 'Minecraft',
    fontSize: 11,
    fontWeight: FontWeight.w500,
  );

  static TextTheme build([TextTheme? base]) {
    base ??= ThemeData.light().textTheme;
    return base.copyWith(
      displayLarge: displayLarge,
      displayMedium: displayMedium,
      displaySmall: displaySmall,
      headlineLarge: headlineLarge,
      headlineMedium: headlineMedium,
      headlineSmall: headlineSmall,
      titleLarge: titleLarge,
      titleMedium: titleMedium,
      titleSmall: titleSmall,
      bodyLarge: bodyLarge,
      bodyMedium: bodyMedium,
      bodySmall: bodySmall,
      labelLarge: labelLarge,
      labelMedium: labelMedium,
      labelSmall: labelSmall,
    );
  }
}

*/


import 'package:flutter/material.dart';

class PickaxeTypography {
  static const String fontFamily = 'Minecraft';

  static TextTheme textTheme = const TextTheme(
    displayLarge: TextStyle(fontFamily: fontFamily, fontSize: 32, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontFamily: fontFamily, fontSize: 20, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontFamily: fontFamily, fontSize: 16),
    labelLarge: TextStyle(fontFamily: fontFamily, fontSize: 14),
  );
}
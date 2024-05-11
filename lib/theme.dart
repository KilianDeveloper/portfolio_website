import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorScheme = ColorScheme.dark(
  background: Color(0xff090F13),
  primary: Color(0xff6DA9C1),
  onPrimary: Color(0xffffffff),
  onBackground: Color(0xffB2B2B2),
  secondary: Color(0xff3D606E),
  onSecondary: Color(0xffffffff),
  surface: Color(0xff09191F),
  onSurface: Color(0xffB2B2B2),
  surfaceVariant: Color(0xff153B47),
);

final textTheme = TextTheme(
  titleLarge: TextStyle(
    fontSize: 52,
    color: colorScheme.secondary,
    fontWeight: FontWeight.bold,
  ),
  titleMedium: const TextStyle(
    fontSize: 32,
  ),
  bodyLarge: const TextStyle(
    fontSize: 32,
  ),
  bodyMedium: const TextStyle(
    fontSize: 24,
  ),
  labelLarge: const TextStyle(
    fontSize: 24,
  ),
);

final appTheme = ThemeData(
  textTheme: GoogleFonts.robotoMonoTextTheme(textTheme),
  scaffoldBackgroundColor: colorScheme.background,
  colorScheme: colorScheme,
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      minimumSize: const Size(60, 60),
      backgroundColor: colorScheme.secondary,
      foregroundColor: colorScheme.onSecondary,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    ),
  ),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {}),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      minimumSize: const Size(60, 60),
      foregroundColor: colorScheme.onBackground,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    ),
  ),
  cardTheme: const CardTheme(margin: EdgeInsets.all(8)),
  useMaterial3: true,
);

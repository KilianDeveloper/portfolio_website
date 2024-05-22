import 'package:flutter/material.dart';
import 'package:flutter_web_test/theme/color.dart';
import 'package:google_fonts/google_fonts.dart';

EdgeInsets buildLargePadding() => const EdgeInsets.only(
      top: 100,
      right: 100,
      left: 100,
      bottom: 60,
    );

double buildLargePaddingLeft() => 100.0;

ThemeData buildLargeTheme() {
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
    labelSmall: const TextStyle(
      fontSize: 12,
    ),
  );

  return ThemeData(
    textTheme: GoogleFonts.robotoMonoTextTheme(textTheme),
    scaffoldBackgroundColor: colorScheme.surface,
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
    tooltipTheme: TooltipThemeData(
        textStyle: textTheme.labelSmall?.copyWith(color: colorScheme.onSurface),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainer,
        )),
    popupMenuTheme: PopupMenuThemeData(
      color: colorScheme.surfaceContainer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    ),
    dividerTheme: DividerThemeData(color: colorScheme.onSurface.withAlpha(100)),
    pageTransitionsTheme: const PageTransitionsTheme(builders: {}),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        minimumSize: const Size(60, 60),
        foregroundColor: colorScheme.onSurface,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    ),
    cardTheme: CardTheme(
      margin: const EdgeInsets.all(8),
      color: colorScheme.surfaceContainer,
    ),
    useMaterial3: true,
  );
}

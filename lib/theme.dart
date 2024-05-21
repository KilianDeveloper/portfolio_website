import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorScheme = ColorScheme.dark(
  surface: Color(0xff090F13),
  primary: Color(0xff6DA9C1),
  onPrimary: Color(0xffffffff),
  onSurface: Color(0xffB2B2B2),
  secondary: Color(0xff3D606E),
  onSecondary: Color(0xffffffff),
  surfaceContainer: Color(0xff09191F),
  surfaceContainerHighest: Color(0xff153B47),
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
    labelSmall: const TextStyle(
      fontSize: 12,
    ));

class HorizontalScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

const paddingLeft = 100.0;

const appPadding = EdgeInsets.only(
  top: 100,
  right: paddingLeft,
  left: paddingLeft,
  bottom: 60,
);

final appTheme = ThemeData(
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

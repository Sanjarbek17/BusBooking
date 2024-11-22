import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.light,
  textTheme: textTheme,
  colorScheme: colorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(colorScheme.primary),
      foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: colorScheme.primary,
    titleTextStyle: textTheme.titleLarge,
    elevation: 0,
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
  ),
);

TextTheme textTheme = const TextTheme(
  displayLarge: TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins',
  ),
  displaySmall: TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    fontFamily: 'Poppins',
  ),
  headlineMedium: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins',
  ),
  titleLarge: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    fontFamily: 'Poppins',
  ),
  labelLarge: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: CustomColors.labelLargerColor,
    fontFamily: 'Poppins',
  ),
  labelMedium: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: CustomColors.labelMediumColor,
    fontFamily: 'Poppins',
  ),
  labelSmall: TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    fontFamily: 'Poppins',
  ),
  bodyLarge: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: CustomColors.primaryColor,
    fontFamily: 'Poppins',
  ),
  bodyMedium: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: CustomColors.bodyMediumColor,
    fontFamily: 'Poppins',
  ),
  bodySmall: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    fontFamily: 'Poppins',
  ),
);

final ColorScheme colorScheme = ColorScheme.fromSwatch(
  // primarySwatch: const Color(0xffFD8700),
  primarySwatch: const MaterialColor(0xffFD8700, {
    50: Color(0xFFFFF3E0),
    100: Color(0xFFFFE0B2),
    200: Color(0xFFFFCC80),
    300: Color(0xFFFFB74D),
    400: Color(0xFFFFA726),
    500: Color(0xFFFF9800),
    600: Color(0xFFFB8C00),
    700: Color(0xFFF57C00),
    800: Color(0xFFEF6C00),
    900: Color(0xFFE65100),
  }),
).copyWith(
    // secondary: const Color(0xff0274BC),
    );

final ThemeData darkThemeData = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.dark,
);

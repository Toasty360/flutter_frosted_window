import 'package:flutter/material.dart';

class CustomTheme {
  // Original enhanced themes from previous code...

  // Mint Theme
  static ThemeData get mintTheme {
    return ThemeData(
      useMaterial3: true,
      primarySwatch: Colors.teal,
      colorScheme: const ColorScheme.light(
        primary: Color(0xFF3AAFA9),
        secondary: Color(0xFF2B7A78),
        tertiary: Color(0xFFDEF2F1),
        surface: Color(0xFFF7FFFF),
        error: Color(0xFFE57373),
      ),
      scaffoldBackgroundColor: const Color(0xFFF7FFFF),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF3AAFA9),
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF2B7A78),
        foregroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Color(0xFF17252A)),
        bodyMedium: TextStyle(color: Color(0xFF455A64)),
      ),
      cardTheme: const CardTheme(
        color: Color(0xFFEFFFFD),
        elevation: 2,
        shadowColor: Color(0xFFDEF2F1),
      ),
    );
  }

  // Dark Theme
  static ThemeData get darkTheme {
    return ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFF7F5AF0),
        secondary: Color(0xFF72DDF7),
        tertiary: Color(0xFF2CB67D),
        surface: Color(0xFF16161A),
        error: Color(0xFFEF4565),
      ),
      scaffoldBackgroundColor: const Color(0xFF16161A),
      cardTheme: const CardTheme(
        color: Color(0xFF242629),
        elevation: 2,
        margin: EdgeInsets.all(8),
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF242629),
        elevation: 0,
        foregroundColor: Color(0xFFFFFFFF),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF7F5AF0),
        foregroundColor: Colors.white,
      ),
      textTheme: TextTheme(
        titleLarge: const TextStyle(color: Color(0xFFFFFFFF)),
        bodyMedium: const TextStyle(color: Color(0xFF94A1B2)),
        bodySmall: TextStyle(color: Colors.grey[400]),
      ),
    );
  }

  // ----- NEW DARK THEMES -----

  // Volcanic Dark Theme
  static ThemeData get volcanicDarkTheme {
    return ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFFFF5F6D),
        secondary: Color(0xFFFF9671),
        tertiary: Color(0xFF541F1F),
        surface: Color(0xFF1A1313),
        error: Color(0xFFFF436C),
      ),
      scaffoldBackgroundColor: const Color(0xFF1A1313),
      cardTheme: const CardTheme(
        color: Color(0xFF2D1F1F),
        elevation: 3,
        margin: EdgeInsets.all(8),
        shadowColor: Color(0xFF541F1F),
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF2D1F1F),
        elevation: 0,
        foregroundColor: Color(0xFFFFFFFF),
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: Color(0xFF2D1F1F),
        titleTextStyle: TextStyle(color: Color(0xFFFFFFFF)),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFFFF5F6D),
        foregroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Color(0xFFFFFFFF)),
        bodyMedium: TextStyle(color: Color(0xFFE0BDBD)),
        bodySmall: TextStyle(color: Color(0xFFBB9696)),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xFF3D2929),
        contentTextStyle: TextStyle(color: Color(0xFFFFCCCC)),
      ),
    );
  }

  // Emerald Dark Theme
  static ThemeData get emeraldDarkTheme {
    return ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFF00E676),
        secondary: Color(0xFF69F0AE),
        tertiary: Color(0xFF005A32),
        surface: Color(0xFF0A1612),
        error: Color(0xFFFF6B6B),
      ),
      scaffoldBackgroundColor: const Color(0xFF0A1612),
      cardTheme: const CardTheme(
        color: Color(0xFF122620),
        elevation: 3,
        margin: EdgeInsets.all(8),
        shadowColor: Color(0xFF005A32),
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF122620),
        elevation: 0,
        foregroundColor: Color(0xFFFFFFFF),
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: Color(0xFF122620),
        titleTextStyle: TextStyle(color: Color(0xFFFFFFFF)),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF00E676),
        foregroundColor: Colors.black,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Color(0xFFFFFFFF)),
        bodyMedium: TextStyle(color: Color(0xFFB0E5CE)),
        bodySmall: TextStyle(color: Color(0xFF8AC4AA)),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xFF1C3F2D),
        contentTextStyle: TextStyle(color: Color(0xFFCCFFE0)),
      ),
    );
  }

  // Amethyst Dark Theme
  static ThemeData get amethystDarkTheme {
    return ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFFAA77FF),
        secondary: Color(0xFFD0A2F7),
        tertiary: Color(0xFF583C87),
        surface: Color(0xFF1E1533),
        error: Color(0xFFFF6767),
      ),
      scaffoldBackgroundColor: const Color(0xFF1E1533),
      cardTheme: const CardTheme(
        color: Color(0xFF2A1E3D),
        elevation: 3,
        margin: EdgeInsets.all(8),
        shadowColor: Color(0xFF583C87),
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF2A1E3D),
        elevation: 0,
        foregroundColor: Color(0xFFFFFFFF),
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: Color(0xFF2A1E3D),
        titleTextStyle: TextStyle(color: Color(0xFFFFFFFF)),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFFAA77FF),
        foregroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Color(0xFFFFFFFF)),
        bodyMedium: TextStyle(color: Color(0xFFE2CCFD)),
        bodySmall: TextStyle(color: Color(0xFFC6A9EA)),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xFF352750),
        contentTextStyle: TextStyle(color: Color(0xFFEDDDFF)),
      ),
    );
  }

  // Carbon Dark Theme
  static ThemeData get carbonDarkTheme {
    return ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFF33B1FF),
        secondary: Color(0xFF78A9FF),
        tertiary: Color(0xFF3D70B2),
        surface: Color(0xFF161616),
        error: Color(0xFFFA4D56),
      ),
      scaffoldBackgroundColor: const Color(0xFF161616),
      cardTheme: const CardTheme(
        color: Color(0xFF262626),
        elevation: 3,
        margin: EdgeInsets.all(8),
        shadowColor: Color(0xFF3D70B2),
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF262626),
        elevation: 0,
        foregroundColor: Color(0xFFFFFFFF),
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: Color(0xFF262626),
        titleTextStyle: TextStyle(color: Color(0xFFFFFFFF)),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF33B1FF),
        foregroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Color(0xFFFFFFFF)),
        bodyMedium: TextStyle(color: Color(0xFFC6C6C6)),
        bodySmall: TextStyle(color: Color(0xFF8D8D8D)),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xFF393939),
        contentTextStyle: TextStyle(color: Color(0xFFE0E0E0)),
      ),
    );
  }

  // Sunset Dark Theme
  static ThemeData get sunsetDarkTheme {
    return ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFFFF7043),
        secondary: Color(0xFFFFB74D),
        tertiary: Color(0xFF853E25),
        surface: Color(0xFF1F1311),
        error: Color(0xFFFF5252),
      ),
      scaffoldBackgroundColor: const Color(0xFF1F1311),
      cardTheme: const CardTheme(
        color: Color(0xFF2C1A14),
        elevation: 3,
        margin: EdgeInsets.all(8),
        shadowColor: Color(0xFF853E25),
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF2C1A14),
        elevation: 0,
        foregroundColor: Color(0xFFFFFFFF),
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: Color(0xFF2C1A14),
        titleTextStyle: TextStyle(color: Color(0xFFFFFFFF)),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFFFF7043),
        foregroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Color(0xFFFFFFFF)),
        bodyMedium: TextStyle(color: Color(0xFFFFD6CC)),
        bodySmall: TextStyle(color: Color(0xFFD4A795)),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xFF462D21),
        contentTextStyle: TextStyle(color: Color(0xFFFFECE5)),
      ),
    );
  }

  // ----- NEW LIGHT COLORED THEMES (NON-WHITE DOMINANT) -----

  // Buttercup Yellow Theme
  static ThemeData get buttercupYellowTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: const Color(0xFFFFB300),
        primaryContainer: const Color(0xFFFFD54F),
        secondary: const Color(0xFFFF8F00),
        tertiary: const Color(0xFFFFC107),
        surface: const Color(0xFFFFF176),
        error: const Color(0xFFD50000),
        onPrimary: Colors.black,
        onSecondary: Colors.black,
        onSurface: const Color(0xFF3E2723),
      ),
      scaffoldBackgroundColor: const Color(0xFFFFF176),
      cardTheme: const CardTheme(
        color: Color(0xFFFFF8E1),
        elevation: 2,
        margin: EdgeInsets.all(8),
        shadowColor: Color(0xFFFFD54F),
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFFFFB300),
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: Color(0xFFFFF8E1),
        titleTextStyle: TextStyle(color: Color(0xFF3E2723)),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFFFF8F00),
        foregroundColor: Colors.black,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Color(0xFF3E2723)),
        bodyMedium: TextStyle(color: Color(0xFF3E2723)),
        bodySmall: TextStyle(color: Color(0xFF5D4037)),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xFFFFC107),
        contentTextStyle: TextStyle(color: Color(0xFF3E2723)),
      ),
    );
  }

  // Mint Green Theme
  static ThemeData get mintGreenTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: const Color(0xFF00BFA5),
        primaryContainer: const Color(0xFF64FFDA),
        secondary: const Color(0xFF009688),
        tertiary: const Color(0xFF4DB6AC),
        surface: const Color(0xFFB2DFDB),
        error: const Color(0xFFD50000),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: const Color(0xFF004D40),
      ),
      scaffoldBackgroundColor: const Color(0xFFB2DFDB),
      cardTheme: const CardTheme(
        color: Color(0xFFE0F2F1),
        elevation: 2,
        margin: EdgeInsets.all(8),
        shadowColor: Color(0xFF80CBC4),
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF00BFA5),
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: Color(0xFFE0F2F1),
        titleTextStyle: TextStyle(color: Color(0xFF004D40)),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF009688),
        foregroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Color(0xFF004D40)),
        bodyMedium: TextStyle(color: Color(0xFF00695C)),
        bodySmall: TextStyle(color: Color(0xFF00796B)),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xFF4DB6AC),
        contentTextStyle: TextStyle(color: Color(0xFF004D40)),
      ),
    );
  }

  // Lavender Purple Theme
  static ThemeData get lavenderPurpleTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: const Color(0xFF7E57C2),
        primaryContainer: const Color(0xFFB39DDB),
        secondary: const Color(0xFF673AB7),
        tertiary: const Color(0xFF9575CD),
        surface: const Color(0xFFD1C4E9),
        error: const Color(0xFFD50000),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: const Color(0xFF311B92),
      ),
      scaffoldBackgroundColor: const Color(0xFFD1C4E9),
      cardTheme: const CardTheme(
        color: Color(0xFFEDE7F6),
        elevation: 2,
        margin: EdgeInsets.all(8),
        shadowColor: Color(0xFFB39DDB),
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF7E57C2),
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: Color(0xFFEDE7F6),
        titleTextStyle: TextStyle(color: Color(0xFF311B92)),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF673AB7),
        foregroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Color(0xFF311B92)),
        bodyMedium: TextStyle(color: Color(0xFF4527A0)),
        bodySmall: TextStyle(color: Color(0xFF512DA8)),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xFF9575CD),
        contentTextStyle: TextStyle(color: Color(0xFF311B92)),
      ),
    );
  }

  // Coral Red Theme
  static ThemeData get coralRedTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: const Color(0xFFE53935),
        primaryContainer: const Color(0xFFEF5350),
        secondary: const Color(0xFFC62828),
        tertiary: const Color(0xFFEF9A9A),
        surface: const Color(0xFFFFCDD2),
        error: const Color(0xFFB71C1C),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: const Color(0xFF880E4F),
      ),
      scaffoldBackgroundColor: const Color(0xFFFFCDD2),
      cardTheme: const CardTheme(
        color: Color(0xFFFFEBEE),
        elevation: 2,
        margin: EdgeInsets.all(8),
        shadowColor: Color(0xFFEF9A9A),
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFFE53935),
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: Color(0xFFFFCDD2),
        titleTextStyle: TextStyle(color: Color(0xFF880E4F)),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFFC62828),
        foregroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Color(0xFFB71C1C)),
        bodyMedium: TextStyle(color: Color(0xFF880E4F)),
        bodySmall: TextStyle(color: Color(0xFF8E0000)),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xFFEF5350),
        contentTextStyle: TextStyle(color: Color(0xFFB71C1C)),
      ),
    );
  }

  // Skyblue Theme
  static ThemeData get skyblueTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: const Color(0xFF1E88E5),
        primaryContainer: const Color(0xFF42A5F5),
        secondary: const Color(0xFF0D47A1),
        tertiary: const Color(0xFF90CAF9),
        surface: const Color(0xFFBBDEFB),
        error: const Color(0xFFD50000),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: const Color(0xFF0D47A1),
      ),
      scaffoldBackgroundColor: const Color(0xFFBBDEFB),
      cardTheme: const CardTheme(
        color: Color(0xFFE3F2FD),
        elevation: 2,
        margin: EdgeInsets.all(8),
        shadowColor: Color(0xFF90CAF9),
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF1E88E5),
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: Color(0xFFE3F2FD),
        titleTextStyle: TextStyle(color: Color(0xFF0D47A1)),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF0D47A1),
        foregroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Color(0xFF0D47A1)),
        bodyMedium: TextStyle(color: Color(0xFF1565C0)),
        bodySmall: TextStyle(color: Color(0xFF1976D2)),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xFF42A5F5),
        contentTextStyle: TextStyle(color: Color(0xFF0D47A1)),
      ),
    );
  }

  // Peach Theme
  static ThemeData get peachTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: const Color(0xFFFF7043),
        primaryContainer: const Color(0xFFFF9E80),
        secondary: const Color(0xFFE64A19),
        tertiary: const Color(0xFFFFAB91),
        surface: const Color(0xFFFFCCBC),
        error: const Color(0xFFD50000),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: const Color(0xFFBF360C),
      ),
      scaffoldBackgroundColor: const Color(0xFFFFCCBC),
      cardTheme: const CardTheme(
        color: Color(0xFFFBE9E7),
        elevation: 2,
        margin: EdgeInsets.all(8),
        shadowColor: Color(0xFFFFAB91),
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFFFF7043),
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: Color(0xFFFFCCBC),
        titleTextStyle: TextStyle(color: Color(0xFFBF360C)),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFFE64A19),
        foregroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Color(0xFFBF360C)),
        bodyMedium: TextStyle(color: Color(0xFFD84315)),
        bodySmall: TextStyle(color: Color(0xFFE64A19)),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xFFFF9E80),
        contentTextStyle: TextStyle(color: Color(0xFFBF360C)),
      ),
    );
  }
}

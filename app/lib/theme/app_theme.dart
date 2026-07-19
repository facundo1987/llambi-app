import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _primary = Color(0xFFF5C400);
  static const Color _secondary = Color(0xFFFFFFFF);
  static const Color _surface = Color(0xFFFFFFFF);
  static const Color _background = Color(0xFFFFFFFF);
  static const Color _onPrimary = Color(0xFF1F1F1F);
  static const Color _onSurface = Color(0xFF121212);
  static const Color _onBackground = Color(0xFF121212);
  static const Color _outline = Color(0xFFCCCCCC);

  static ThemeData get lightTheme {
    final colorScheme = const ColorScheme(
      brightness: Brightness.light,
      primary: _primary,
      onPrimary: _onPrimary,
      secondary: _secondary,
      onSecondary: _onPrimary,
      surface: _surface,
      onSurface: _onSurface,
      background: _background,
      onBackground: _onBackground,
      error: Color(0xFFB00020),
      onError: _secondary,
      primaryContainer: Color(0xFFFFF2CC),
      onPrimaryContainer: _onPrimary,
      secondaryContainer: Color(0xFFF5F5F5),
      onSecondaryContainer: _onPrimary,
      errorContainer: Color(0xFFF9D8D6),
      onErrorContainer: Color(0xFF410E0B),
    );

    final textTheme = Typography.material2021(platform: TargetPlatform.android)
        .black
        .copyWith(
          displayLarge: const TextStyle(
            color: _onBackground,
            fontWeight: FontWeight.w700,
            fontSize: 32,
          ),
          displayMedium: const TextStyle(
            color: _onBackground,
            fontWeight: FontWeight.w700,
            fontSize: 28,
          ),
          displaySmall: const TextStyle(
            color: _onBackground,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
          headlineLarge: const TextStyle(
            color: _onBackground,
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
          headlineMedium: const TextStyle(
            color: _onBackground,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          bodyLarge: const TextStyle(color: _onBackground, fontSize: 16),
          bodyMedium: const TextStyle(color: Color(0xFF484848), fontSize: 14),
          bodySmall: const TextStyle(color: Color(0xFF6F6F6F), fontSize: 12),
          labelLarge: const TextStyle(
            color: _onBackground,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: _background,
      canvasColor: _background,
      dialogBackgroundColor: _surface,
      splashFactory: InkRipple.splashFactory,
      appBarTheme: const AppBarTheme(
        backgroundColor: _background,
        foregroundColor: _onBackground,
        elevation: 0,
        iconTheme: IconThemeData(color: _onBackground),
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: _onBackground,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _primary,
          foregroundColor: _onPrimary,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            letterSpacing: 0.25,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: _primary,
          foregroundColor: _onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: _onBackground,
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      cardTheme: CardThemeData(
        color: _surface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        margin: EdgeInsets.zero,
      ),
      dialogTheme: const DialogThemeData(backgroundColor: _surface),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: _surface,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: _outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: _outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: _primary),
        ),
        hintStyle: const TextStyle(color: Color(0xFF8A8A8A)),
        labelStyle: const TextStyle(color: _onBackground),
      ),
      textTheme: textTheme,
      primaryTextTheme: textTheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}

import 'package:flutter/material.dart';

class MonchColors {
  MonchColors._();

  // TODO: fix colors

  // App basic colors
  static const Color primary = Color(0xFF553311);
  static const Color secondary = Color(0xFFEECC77);
  static const Color accent = Color(0xFFEB9947);

  // Text colors
  static const Color textPrimary = Color(0xFF272727);
  static const Color textSecondary = Color(0xFF303030);
  static const Color textWhite = Color(0xFFFFFFFF);

  // Background colors
  static const Color light = Color(0xFFECECEC);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFECECEC);

  // Background Container colors
  static const Color lightContainer = Color(0xFFFFFFFF);
  static const Color darkContainer = Color(0xFFFFFFFF);

  // Button colors
  static const Color buttonPrimary = Color(0xFFEB9947);
  static const Color buttonSecondary = Color(0xFF553311);
  static const Color buttonDisabled = Color(0xFFEECC77);

  // Border colors
  static const Color borderPrimary = Color(0xFF553311);
  static const Color borderSecondary = Color(0xFFEECC77);

  // Error and Validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);


  // Neutral shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);

  // Gradient example
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [Colors.red, Colors.yellow, Colors.purple]);
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Traditional Hindu colors
  static const Color saffron = Color(0xFFFF9933);
  static const Color deepSaffron = Color(0xFFE65100);
  static const Color maroon = Color(0xFF8B0000);
  static const Color deepMaroon = Color(0xFF5C0000);
  static const Color gold = Color(0xFFFFD700);
  static const Color cream = Color(0xFFFFF8E7);
  static const Color darkBg = Color(0xFF1A0F0A);
  static const Color cardDark = Color(0xFF2C1B12);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: saffron,
    scaffoldBackgroundColor: cream,
    colorScheme: ColorScheme.fromSeed(
      seedColor: saffron,
      primary: saffron,
      secondary: maroon,
      tertiary: gold,
      surface: cream,
      brightness: Brightness.light,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: deepSaffron,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    cardTheme: CardTheme(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: saffron,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(fontWeight: FontWeight.bold),
      headlineMedium: GoogleFonts.poppins(fontWeight: FontWeight.w600),
      titleLarge: GoogleFonts.poppins(fontWeight: FontWeight.w600),
      bodyLarge: GoogleFonts.notoSansDevanagari(fontSize: 18),
      bodyMedium: GoogleFonts.poppins(),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: saffron,
    scaffoldBackgroundColor: darkBg,
    colorScheme: ColorScheme.fromSeed(
      seedColor: saffron,
      primary: saffron,
      secondary: gold,
      tertiary: maroon,
      surface: cardDark,
      brightness: Brightness.dark,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: deepMaroon,
      foregroundColor: gold,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: gold,
      ),
    ),
    cardTheme: CardTheme(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: cardDark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: saffron,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: Colors.white),
      headlineMedium: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: Colors.white),
      titleLarge: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: gold),
      bodyLarge: GoogleFonts.notoSansDevanagari(fontSize: 18, color: Colors.white),
      bodyMedium: GoogleFonts.poppins(color: Colors.white70),
    ),
  );
}

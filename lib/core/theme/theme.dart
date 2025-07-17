import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColor.kMainColor),
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: AppColor.kMainBGColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.kMainBGColor,
        surfaceTintColor: AppColor.KWhiteColor,
      ),
      textTheme: TextTheme(
        // ... app bar title
        titleLarge: GoogleFonts.openSans(
          fontSize: 17,
          color: AppColor.KBlackColor,
        ),
        // ... main Text style ...
        headlineLarge: GoogleFonts.cairo(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: AppColor.KMainTextColor,
        ),
        // ... second Text style ...
        headlineMedium: GoogleFonts.cairo(
          fontSize: 18,
          color: AppColor.KSecondTextColor,
        ),
        // ... third Text style ...
        headlineSmall: GoogleFonts.cairo(
          fontSize: 15,
          color: AppColor.KSecondTextColor,
        ),
        // ... Text style for Property title and the title of the Auth ...
        bodyMedium: GoogleFonts.cairo(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColor.KBlackColor,
        ),
        // ... Text style for rate and location on Property card ...
        bodySmall: GoogleFonts.cairo(
          fontSize: 14,
          color: Colors.grey[500],
        ),
        // ... Text style for the price of the Property  ...
        displayMedium: GoogleFonts.cairo(
            fontSize: 16,
            color: AppColor.kMainColor,
            fontWeight: FontWeight.bold),
        // ... Text style for the Items of profile view  ...
        displaySmall: GoogleFonts.cairo(
          fontSize: 16,
          color: AppColor.KBlackColor,
        ),
        // Material Button style
        labelMedium: GoogleFonts.cairo(
          fontSize: 20,
          color: AppColor.kMainBGColor,
        ),
      ),
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom()));

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.kMainColor),
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.kMainBGColor,
      surfaceTintColor: AppColor.KWhiteColor,
    ),
    textTheme: TextTheme(
      // ... app bar title
      titleLarge: GoogleFonts.cairo(
        fontSize: 17,
        color: AppColor.KWhiteColor,
      ),
      // ... main Text style ...
      headlineLarge: GoogleFonts.cairo(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColor.kMainBGColor,
      ),

      // ... second Text style ...
      headlineMedium: GoogleFonts.cairo(
        fontSize: 18,
        color: AppColor.KSecondTextColor,
      ),
      // ... third Text style ...
      headlineSmall: GoogleFonts.cairo(
        fontSize: 15,
        color: AppColor.KSecondTextColor,
      ),
      // ... Text style for Property title ...
      bodyMedium: GoogleFonts.cairo(
        fontSize: 18,
        color: AppColor.KWhiteColor,
      ),
      // ... Text style for rate and location on Property card ...
      bodySmall: GoogleFonts.cairo(
        fontSize: 14,
        color: Colors.grey[500],
      ),
      // ... Text style for the price of the Property  ...
      displayMedium: GoogleFonts.cairo(
          fontSize: 16,
          color: AppColor.kMainColor,
          fontWeight: FontWeight.bold),
      // ... Text style for the Items of profile view  ...
      displaySmall: GoogleFonts.cairo(
        fontSize: 16,
        color: AppColor.KGreyColor,
      ),
      // Material Button style
      labelMedium: GoogleFonts.cairo(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColor.KWhiteColor,
      ),
    ),
  );
}

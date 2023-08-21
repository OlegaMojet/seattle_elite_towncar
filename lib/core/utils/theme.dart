import 'package:flutter/material.dart';
import 'package:seattle_taxi/core/utils/gen/fonts.gen.dart';

import 'colors.dart';

extension ThemeX on BuildContext {
  ThemeData get theme => AppTheme().main;
}

extension ColorX on BuildContext {
  AppColors get colors => AppColors();
}

class AppTheme {
  final colors = AppColors();
  ThemeData get main {
    final mainStyle = TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w600,
      color: colors.black,
    );
    final labelLarge = mainStyle.copyWith(fontSize: 16);
    final bodyLarge = mainStyle.copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, height: 24 / 16);
    return ThemeData(
      fontFamily: FontFamily.sansPro,
      primaryColor: colors.mediumBlue,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStatePropertyAll(colors.black),
        checkColor: MaterialStatePropertyAll(colors.black),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: const MaterialStatePropertyAll(RoundedRectangleBorder()),
            overlayColor: const MaterialStatePropertyAll(Colors.white10),
            backgroundColor: MaterialStatePropertyAll(
              colors.mediumBlue,
            ),
            shadowColor: MaterialStatePropertyAll(
              colors.mediumBlue.withOpacity(0.26),
            ),
            padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: 14)),
            elevation: const MaterialStatePropertyAll(16)),
      ),
      textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
            overlayColor: MaterialStatePropertyAll(Colors.transparent)),
      ),
      textTheme: TextTheme(
        displayLarge: mainStyle,
        displayMedium: mainStyle.copyWith(fontSize: 45),
        displaySmall: mainStyle.copyWith(fontSize: 36),
        headlineLarge: mainStyle.copyWith(fontSize: 32),
        headlineMedium: mainStyle.copyWith(fontSize: 28),
        headlineSmall: mainStyle.copyWith(fontSize: 24),
        titleLarge: mainStyle.copyWith(fontSize: 22),
        titleMedium: mainStyle.copyWith(fontSize: 16),
        titleSmall: mainStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        labelLarge: labelLarge,
        labelMedium: mainStyle.copyWith(fontSize: 14),
        labelSmall: mainStyle.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        bodyLarge: bodyLarge,
        bodyMedium: mainStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: mainStyle.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: labelLarge,
        hintStyle: bodyLarge.copyWith(color: colors.gray),
        contentPadding: const EdgeInsets.symmetric(horizontal: 9),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: colors.lightGray,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: colors.mediumBlue,
          ),
        ),
      ),
    );
  }
}

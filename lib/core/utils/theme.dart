import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seattle_elite_towncar/core/gen/fonts.gen.dart';
import 'package:seattle_elite_towncar/core/utils/colors.dart';

extension ThemeX on BuildContext {
  ThemeData get theme => AppTheme().main;
}

class AppTheme {
  ThemeData get main {
    const mainStyle = TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    );
    final labelLarge = mainStyle.copyWith(fontSize: 16);
    final bodyLarge = mainStyle.copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, height: 24 / 16);
    final titleMedium = mainStyle.copyWith(fontSize: 16);
    return ThemeData(
      fontFamily: FontFamily.sansPro,
      primaryColor: AppColors.mediumBlue,
      colorScheme: const ColorScheme.light(
          primary: AppColors.mediumBlue, onSurface: AppColors.mediumBlue),
      scaffoldBackgroundColor: AppColors.lighterGray,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      checkboxTheme: const CheckboxThemeData(
        fillColor: MaterialStatePropertyAll(AppColors.black),
        checkColor: MaterialStatePropertyAll(AppColors.black),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: const MaterialStatePropertyAll(RoundedRectangleBorder()),
          overlayColor: const MaterialStatePropertyAll(Colors.white10),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.mediumBlue.withOpacity(0.5);
            }
            return AppColors.mediumBlue;
          }),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.white;
            }
            return AppColors.white;
          }),
          shadowColor:
              MaterialStatePropertyAll(AppColors.mediumBlue.withOpacity(0.26)),
          padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(vertical: 14)),
          elevation: MaterialStateProperty.resolveWith(
              (states) => states.contains(MaterialState.disabled) ? 0 : 16),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.darkBlue),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          foregroundColor: AppColors.darkBlue,
          backgroundColor: AppColors.white,
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
      listTileTheme: ListTileThemeData(
        titleTextStyle: titleMedium.copyWith(height: 1),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          overlayColor: MaterialStatePropertyAll(
            AppColors.mediumBlue.withOpacity(0.2),
          ),
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          foregroundColor: const MaterialStatePropertyAll(AppColors.mediumBlue),
          padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(vertical: 14),
          ),
        ),
      ),
      switchTheme: const SwitchThemeData(
        thumbColor: MaterialStatePropertyAll(
          AppColors.darkBlue,
        ),
        trackColor: MaterialStatePropertyAll(
          AppColors.mediumBlue,
        ),
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
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.mediumBlue,
        selectionHandleColor: AppColors.mediumBlue.withOpacity(0.1),
        selectionColor: AppColors.mediumBlue,
      ),
      cupertinoOverrideTheme: const CupertinoThemeData(
        primaryColor: AppColors.darkBlue,
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: labelLarge,
        hintStyle: bodyLarge.copyWith(color: AppColors.gray),
        contentPadding: const EdgeInsets.symmetric(horizontal: 9),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: AppColors.lightGray,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: AppColors.mediumBlue,
          ),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: AppColors.lightGray,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: AppColors.red,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: AppColors.red,
          ),
        ),
      ),
    );
  }
}

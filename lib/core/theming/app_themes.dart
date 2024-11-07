import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.bgColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightPurple,
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: AppColors.darkPurple,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
      ),
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
      ),
      bodySmall: TextStyle(
        fontSize: 16,
        color: AppColors.blackColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        color: AppColors.blackColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 24,
        color: AppColors.blackColor,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.bgColor,
      selectedItemColor: AppColors.darkPurple,
      unselectedItemColor: AppColors.lightGrey,
      unselectedIconTheme: IconThemeData(
        color: AppColors.lightGrey,
        size: 30,
      ),
      selectedIconTheme: IconThemeData(
        color: AppColors.darkPurple,
        size: 30,
      ),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
  );
}

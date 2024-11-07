import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.bgColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightPurple,
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: AppColors.darkPurple,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 26.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
      ),
      headlineLarge: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
      ),
      bodySmall: TextStyle(
        fontSize: 16.sp,
        color: AppColors.blackColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 20.sp,
        color: AppColors.blackColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 24.sp,
        color: AppColors.blackColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.bgColor,
      selectedItemColor: AppColors.darkPurple,
      unselectedItemColor: AppColors.lightGrey,
      unselectedIconTheme: const IconThemeData(
        color: AppColors.lightGrey,
        size: 30,
      ),
      selectedIconTheme: IconThemeData(
        color: AppColors.darkPurple,
        size: 30.sp,
      ),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
  );
}

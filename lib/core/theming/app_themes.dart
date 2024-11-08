import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightPurple,
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: AppColors.darkPurple,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'Rubik',
      ),
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
        fontFamily: 'Rubik',
      ),
      headlineMedium: TextStyle(
        fontSize: 26.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
        fontFamily: 'Rubik',
      ),
      headlineLarge: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
        fontFamily: 'Rubik',
      ),
      bodySmall: TextStyle(
        fontSize: 16.sp,
        color: AppColors.blackColor,
        fontFamily: 'Rubik',
      ),
      bodyMedium: TextStyle(
        fontSize: 20.sp,
        color: AppColors.blackColor,
        fontFamily: 'Rubik',
      ),
      bodyLarge: TextStyle(
        fontSize: 24.sp,
        color: AppColors.blackColor,
        fontFamily: 'Rubik',
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.whiteColor,
      selectedItemColor: AppColors.darkPurple,
      unselectedItemColor: AppColors.darkGrey,
      unselectedIconTheme: IconThemeData(
        color: AppColors.darkGrey,
        size: 30.r,
      ),
      selectedIconTheme: IconThemeData(
        color: AppColors.darkPurple,
        size: 30.r,
      ),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
  );
}

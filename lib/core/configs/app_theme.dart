import 'package:flutter/material.dart';
import 'package:store_app/core/configs/app_color.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.lightBackgroundColor,
    fontFamily: 'CircularStd',
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColor.lightSecondBackgroundColor,
      hintStyle: const TextStyle(
          color: Color(0xFF8E8E8E), fontWeight: FontWeight.w500),
      contentPadding: EdgeInsets.all(15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide.none,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.darkBackgroundColor,
    fontFamily: 'CircularStd',
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColor.darkSecondBackgroundColor,
      hintStyle: const TextStyle(
          color: Color(0xFFA7A7A7), fontWeight: FontWeight.w500),
      contentPadding: EdgeInsets.all(10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide.none,
      ),
    ),
  );
}

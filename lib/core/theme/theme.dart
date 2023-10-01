import 'package:chefapp/core/utiles/app_colors.dart';
import 'package:chefapp/core/utiles/app_textStyle.dart';
import 'package:flutter/material.dart';

ThemeData getTheme() {
  return ThemeData(
    primaryColor: AppColor.primery,
    scaffoldBackgroundColor: AppColor.white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.primery,
    ),
    textTheme: TextTheme(
      displayLarge: boldStyle(),
      displayMedium: regularStyle(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primery,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      hintStyle: boldStyle(color: AppColor.grey,fontSize: 16),
    ),
  );
}

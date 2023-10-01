import 'package:chefapp/core/utiles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle _textStyle({required Color color, required FontWeight fontWeight, required double fontSize}) {
  return GoogleFonts.lato(
    color: color,
   fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

TextStyle boldStyle({
 Color color = AppColor.white,
  double fontSize = 30.0,
}) {
  return _textStyle(
      color: color, fontWeight: FontWeight.bold, fontSize: fontSize);
}
TextStyle regularStyle({
 Color color = AppColor.white,
 double fontSize = 20.0,
}) {
  return _textStyle(
      color: color, fontWeight: FontWeight.bold, fontSize: fontSize);
}

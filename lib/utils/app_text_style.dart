import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle monteserratStyle(
      {required Color color, required double fontSize}) {
    return GoogleFonts.montserrat(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w800,
    );
  }

  static TextStyle headLineTextStyle({required double fontSize}) {
    return GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
    );
  }

  static TextStyle normalStyle({required double fontSize}) {
    return GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
    );
  }
}

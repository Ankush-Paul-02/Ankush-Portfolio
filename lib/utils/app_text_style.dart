import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle monteserratStyle({required Color color}) {
    return GoogleFonts.montserrat(
      color: color,
      fontSize: 24,
      fontWeight: FontWeight.w800,
    );
  }

  static TextStyle headLineTextStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 40,
      fontWeight: FontWeight.bold,
      fontFamily: 'Kizard',
      letterSpacing: 2,
    );
  }

  static TextStyle normalStyle() {
    return GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
    );
  }

}

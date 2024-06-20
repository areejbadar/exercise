import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyles {
  static TextStyle largeTextStyle({Color color = Colors.white}) {
    return GoogleFonts.limelight(
      textStyle:
          TextStyle(fontSize: 45, color: color, fontWeight: FontWeight.bold),
    );
  }

  static TextStyle mediumTextStyle({Color color = Colors.white}) {
    return GoogleFonts.limelight(
      textStyle:
          TextStyle(fontSize: 35, color: color, fontWeight: FontWeight.bold),
    );
  }

  static TextStyle smallTextStyle({Color color = Colors.white}) {
    return GoogleFonts.limelight(
      textStyle:
          TextStyle(fontSize: 16, color: color, fontWeight: FontWeight.bold),
    );
  }

  static TextStyle minismallTextStyle({Color color = Colors.white}) {
    return TextStyle(fontSize: 10, color: color, fontWeight: FontWeight.bold);
  }
}

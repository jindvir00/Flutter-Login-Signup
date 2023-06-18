import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:learntoday/utils/widget_themes/text_theme.dart';

import '../../constants/colors.dart';

class LearnTodayAppTheme {
  static ThemeData lighTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: LearnTodayTextTheme.lighTextTheme);
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: LearnTodayTextTheme.darkTextTheme);

  static TextStyle logoStyle = GoogleFonts.aleo(
      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32);
  static TextStyle textStyle = GoogleFonts.gfsDidot(
      color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 16);
  static TextStyle textStyleBtn = GoogleFonts.aleo(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16);
}

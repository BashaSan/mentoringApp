import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class myTheme {
  static Color appBarTheme= HexColor("#71C5EE");

  static Color icon = HexColor("#71C5EE");

  static Color body = Color.fromARGB(255, 223, 217, 217);

  static Color btn = HexColor("#71C5EE");
}

class myStyle {
  static var mainTitle = GoogleFonts.lato(
    fontStyle: FontStyle.normal,
    fontSize: 25.0,
  );
  static var discussionTitle = GoogleFonts.openSans(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 15,
      letterSpacing: 1.5,
      color: HexColor("#1d2129"));
  static var description =
      GoogleFonts.openSans(fontStyle: FontStyle.normal, fontSize: 10);
  static var mentor = GoogleFonts.openSans(
    fontStyle: FontStyle.normal,
    fontSize: 18,
    color: HexColor("#1d2129"),
    letterSpacing: 1.5,
    fontWeight: FontWeight.w500,
  );
}

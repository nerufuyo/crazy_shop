import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Color Pallet
const Color whiteColor = Color(0xFFFFFFFF);
const Color greenColor = Color(0xFF169959);
const Color blackColor = Color(0xFF222831);
const Color grayColor = Color(0xFF92979E);

// Text Style
final TextStyle superBigBlack =
    GoogleFonts.nunito(fontSize: 24, color: blackColor);
final TextStyle bigBlack = GoogleFonts.nunito(
    fontSize: 20, fontWeight: FontWeight.bold, color: blackColor);
final TextStyle mediumBlack = GoogleFonts.nunito(
    fontSize: 16, fontWeight: FontWeight.bold, color: blackColor);
final TextStyle smallBlack =
    GoogleFonts.nunito(fontSize: 14, color: blackColor);
final TextStyle superSmallBlack =
    GoogleFonts.nunito(fontSize: 12, color: blackColor);

final TextStyle superBigGray =
    GoogleFonts.nunito(fontSize: 24, color: grayColor);
final TextStyle bigGray = GoogleFonts.nunito(fontSize: 20, color: grayColor);
final TextStyle mediumGray = GoogleFonts.nunito(fontSize: 16, color: grayColor);
final TextStyle smallGray = GoogleFonts.nunito(fontSize: 14, color: grayColor);
final TextStyle superSmallGray =
    GoogleFonts.nunito(fontSize: 12, color: grayColor);

final TextStyle superBigGreen =
    GoogleFonts.nunito(fontSize: 24, color: greenColor);
final TextStyle bigGreen = GoogleFonts.nunito(fontSize: 20, color: greenColor);
final TextStyle mediumGreen =
    GoogleFonts.nunito(fontSize: 16, color: greenColor);
final TextStyle smallGreen =
    GoogleFonts.nunito(fontSize: 14, color: greenColor);
final TextStyle superSmallGreen =
    GoogleFonts.nunito(fontSize: 12, color: greenColor);

final TextStyle superBigWhite =
    GoogleFonts.nunito(fontSize: 24, color: whiteColor);
final TextStyle bigWhite = GoogleFonts.nunito(fontSize: 20, color: whiteColor);
final TextStyle mediumWhite =
    GoogleFonts.nunito(fontSize: 16, color: whiteColor);
final TextStyle smallWhite =
    GoogleFonts.nunito(fontSize: 14, color: whiteColor);
final TextStyle superSmallWhite =
    GoogleFonts.nunito(fontSize: 12, color: whiteColor);

// Theme Color
const customTheme = ColorScheme(
    brightness: Brightness.light,
    primary: blackColor,
    onPrimary: blackColor,
    secondary: whiteColor,
    onSecondary: whiteColor,
    error: grayColor,
    onError: grayColor,
    background: whiteColor,
    onBackground: whiteColor,
    surface: whiteColor,
    onSurface: whiteColor);

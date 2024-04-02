import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 15.0;

Color primaryColor = const Color(0xff1FA0C9);
Color secondaryColor = const Color(0xff1FA0C9).withOpacity(0.5);
Color whiteColor = const Color(0xffFFFFFF);
Color redColor = const Color(0xffED6363);
Color greenColor = const Color(0xff107C41);
Color blackColor = const Color(0xff121212);
Color lightGrayTextColor = const Color(0xffB9B9B9);
Color grayTextColor = const Color(0xff757575);
Color ligtBlue = const Color(0xFFEEF6F9);

TextStyle primaryTextStyle = GoogleFonts.inter(
  color: primaryColor,
);

TextStyle blackTextStyle = GoogleFonts.inter(
  color: blackColor,
);

TextStyle lightGrayTextStyle = GoogleFonts.inter(
  color: lightGrayTextColor,
);

TextStyle grayTextStyle = GoogleFonts.inter(
  color: grayTextColor,
);

TextStyle whiteTextStyle = GoogleFonts.inter(
  color: whiteColor,
);

TextStyle greenTextStyle = GoogleFonts.inter(
  color: greenColor,
);

FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

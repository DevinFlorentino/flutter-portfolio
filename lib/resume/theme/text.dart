import 'package:flutter/material.dart';
import 'package:portfolio_app/resume/theme/colors.dart';

// ******************* Padding *******************
const double minimumPadding = 8.0;
const double mediumPadding = 16.0;

// ******************* Fonts *******************
// Genos
const TextStyle genosHeaderStyle = TextStyle(
  fontFamily: "Genos",
  color: Colors.white,
  fontSize: 22,
  fontWeight: FontWeight.w600,
  letterSpacing: 1.5,
);

const TextStyle genosSubHeaderStyle = TextStyle(
  fontFamily: "Genos",
  color: subHeaderTextColor,
  fontSize: 20,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.5,
);

const TextStyle genosIntroStyle = TextStyle(
    fontFamily: "Genos",
    color: introTextColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.5,
    wordSpacing: 2);

const TextStyle genosParagraphStyle = TextStyle(
    fontFamily: "Genos",
    color: paragraphTextColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.5,
    wordSpacing: 2);

// RampartOne
const TextStyle rampartOneTextStyle = TextStyle(
  fontFamily: "RampartOne",
  color: appBarTextColor,
  letterSpacing: 4,
);

import 'package:dimipay_design_kit/interfaces/dimipay_colors.dart';
import 'package:dimipay_design_kit/interfaces/dimipay_theme.dart';
import 'package:dimipay_design_kit/interfaces/dimipay_typography.dart';
import 'package:flutter/material.dart';

class DPDarkThemeColors implements IDPColors {
  @override
  Color grayscale100 = const Color(0xFF2C2F2F);
  @override
  Color grayscale200 = const Color(0xFF2C2F2F);
  @override
  Color grayscale300 = const Color(0xFF2C2F2F);
  @override
  Color grayscale400 = const Color(0xFF3A3F3F);
  @override
  Color grayscale500 = const Color(0xFF7F8889);
  @override
  Color grayscale600 = const Color(0xFFB3B9B9);
  @override
  Color grayscale700 = const Color(0xFFD9DCDC);
  @override
  Color grayscale800 = const Color(0xFFE9EBEB);
  @override
  Color grayscale900 = const Color(0xFFF4F5F5);
  @override
  Color grayscale1000 = const Color(0xFFFDFDFD);
  @override
  Color primaryBrand = const Color(0xFF2EA4AB);
  @override
  Color primaryNegative = const Color(0xFFD76263);
}

class DPDarkThemeTypography extends DPTypography {
  DPDarkThemeTypography() : super(DPDarkThemeColors().grayscale700);
}

class DPDarkTheme extends DPTheme {
  DPDarkTheme() : super(colors: DPDarkThemeColors(), textStyle: DPDarkThemeTypography());
}

import 'package:dimipay_design_kit/interfaces/dimipay_colors.dart';
import 'package:dimipay_design_kit/interfaces/dimipay_theme.dart';
import 'package:dimipay_design_kit/interfaces/dimipay_typography.dart';
import 'package:flutter/material.dart';

class DPLightThemeColors implements IDPColors {
  @override
  Color grayscale100 = const Color(0xFFFDFEFE);
  @override
  Color grayscale200 = const Color(0xFFF4F5F5);
  @override
  Color grayscale300 = const Color(0xFFEAEBEB);
  @override
  Color grayscale400 = const Color(0xFFDADDDD);
  @override
  Color grayscale500 = const Color(0xFFB4B9B9);
  @override
  Color grayscale600 = const Color(0xFF808989);
  @override
  Color grayscale700 = const Color(0xFF626A6B);
  @override
  Color grayscale800 = const Color(0xFF4B5152);
  @override
  Color grayscale900 = const Color(0xFF333738);
  @override
  Color grayscale1000 = const Color(0xFF1C1F1F);
  @override
  Color primaryBrand = const Color(0xFF2EA4AB);
  @override
  Color primaryNegative = const Color(0xFFD76263);
}

class DPLightThemeTypography extends DPTypography {
  DPLightThemeTypography() : super(DPLightThemeColors().grayscale700);
}

class DPLightTheme extends DPTheme {
  DPLightTheme() : super(colors: DPLightThemeColors(), textStyle: DPLightThemeTypography());
}

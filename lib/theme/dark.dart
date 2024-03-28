import 'package:dimipay_design_kit/interfaces/dimipay_colors.dart';
import 'package:dimipay_design_kit/interfaces/dimipay_theme.dart';
import 'package:dimipay_design_kit/interfaces/dimipay_typography.dart';
import 'package:flutter/material.dart';

class DPDarkThemeColors extends DPColors {
  DPDarkThemeColors()
      : super(
          grayscale100: const Color(0xFF222525),
          grayscale200: const Color(0xFF1C1F1F),
          grayscale300: const Color(0xFF2C3030),
          grayscale400: const Color(0xFF3B3F40),
          grayscale500: const Color(0xFF808989),
          grayscale600: const Color(0xFFB4B9B9),
          grayscale700: const Color(0xFFDADDDD),
          grayscale800: const Color(0xFFEAEBEB),
          grayscale900: const Color(0xFFF4F5F5),
          grayscale1000: const Color(0xFFFDFEFE),
          primaryBrand: const Color(0xFF2EA4AB),
          primaryNegative: const Color(0xFFD76263),
        );
}

class DPDarkThemeTypography extends DPTypography {
  DPDarkThemeTypography() : super(defaultColor: DPDarkThemeColors().grayscale700);
}

class DPDarkTheme extends DPTheme {
  DPDarkTheme() : super(colors: DPDarkThemeColors(), textStyle: DPDarkThemeTypography());
}

import 'package:dimipay_design_kit/interfaces/dimipay_colors.dart';
import 'package:dimipay_design_kit/interfaces/dimipay_theme.dart';
import 'package:dimipay_design_kit/interfaces/dimipay_typography.dart';
import 'package:flutter/material.dart';

class DPLightThemeColors extends DPColors {
  DPLightThemeColors()
      : super(
          grayscale100: const Color(0xFFFDFEFE),
          grayscale200: const Color(0xFFF4F5F5),
          grayscale300: const Color(0xFFEAEBEB),
          grayscale400: const Color(0xFFDADDDD),
          grayscale500: const Color(0xFFB4B9B9),
          grayscale600: const Color(0xFF808989),
          grayscale700: const Color(0xFF626A6B),
          grayscale800: const Color(0xFF4B5152),
          grayscale900: const Color(0xFF333738),
          grayscale1000: const Color(0xFF1C1F1F),
          primaryBrand: const Color(0xFF2EA4AB),
          primaryNegative: const Color(0xFFD76263),
        );
}

class DPLightThemeTypography extends DPTypography {
  DPLightThemeTypography() : super(DPLightThemeColors().grayscale700);
}

class DPLightTheme extends DPTheme {
  DPLightTheme() : super(colors: DPLightThemeColors(), textStyle: DPLightThemeTypography());
}

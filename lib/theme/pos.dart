import 'package:dimipay_design_kit/interfaces/dimipay_theme.dart';
import 'package:dimipay_design_kit/interfaces/dimipay_typography.dart';
import 'package:dimipay_design_kit/theme/light.dart';
import 'package:flutter/material.dart';

class DPPosTypography extends DPTypography {
  DPPosTypography()
      : super(
          defaultColor: DPLightThemeColors().grayscale700,
          itemTitle: style(Weight.semiBold, 24, 0, DPLightThemeColors().grayscale700),
          itemDescription: style(Weight.medium, 24, 0, DPLightThemeColors().grayscale700),
          title: style(Weight.semiBold, 36, 0, DPLightThemeColors().grayscale700, spacing: -0.72),
        );

  TextStyle underlined({Color? color}) => style(Weight.regular, 24, 0, color ?? defaultColor, underlined: true);
}

class DPPosTheme extends DPTheme {
  DPPosTheme() : super(colors: DPLightThemeColors(), textStyle: DPPosTypography());
}

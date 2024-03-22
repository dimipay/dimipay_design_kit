import 'package:dimipay_design_kit/interfaces/dimipay_theme.dart';
import 'package:dimipay_design_kit/interfaces/dimipay_typography.dart';
import 'package:dimipay_design_kit/theme/light.dart';
import 'package:flutter/material.dart';

class DPPosTypography extends DPLightThemeTypography {
  @override
  TextStyle itemTitle({Color? color}) => style(Weight.semiBold, 24, 0, color ?? defaultColor);

  @override
  TextStyle itemDescription({Color? color}) => style(Weight.medium, 24, 0, color ?? defaultColor);

  @override
  TextStyle title({Color? color}) => style(Weight.semiBold, 36, 0, color ?? defaultColor, spacing: -0.72);

  TextStyle underlined({Color? color}) => style(Weight.regular, 24, 0, color ?? defaultColor, underlined: true);
}

class DPPosTheme extends DPTheme {
  DPPosTheme() : super(colors: DPLightThemeColors(), textStyle: DPPosTypography());
}

import 'package:flutter/material.dart';

TextStyle style(FontWeight weight, double size, double height, Color color, {bool underlined = false, double spacing = 0}) => TextStyle(
      color: color,
      height: height / size,
      fontSize: size,
      fontFamily: 'SUITv1',
      fontWeight: weight,
      letterSpacing: spacing,
      decoration: underlined ? TextDecoration.underline : TextDecoration.none,
      decorationColor: color,
    );

abstract class Weight {
  static const thin = FontWeight.w100;
  static const extraLight = FontWeight.w200;
  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const semiBold = FontWeight.w600;
  static const bold = FontWeight.w700;
  static const extraBold = FontWeight.w800;
  static const heavy = FontWeight.w900;
}

abstract interface class IDPTypography {
  TextStyle title({Color color});

  TextStyle header1({Color color});

  TextStyle header2({Color color});

  TextStyle itemTitle({Color color});

  TextStyle itemDescription({Color color});

  TextStyle description({Color color});

  TextStyle readable({Color color});

  TextStyle token({Color color});

  TextStyle hint({Color color});

  TextStyle paragraph1({Color color});

  TextStyle paragraph2({Color color});

  TextStyle paragraph1Underlined({Color color});

  TextStyle paragraph2Underlined({Color color});
}

class DPTypography implements IDPTypography {
  final Color defaultColor;

  DPTypography(this.defaultColor);

  @override
  TextStyle title({Color? color}) => style(Weight.semiBold, 28, 36, color ?? defaultColor);

  @override
  TextStyle header1({Color? color}) => style(Weight.bold, 24, 32, color ?? defaultColor);

  @override
  TextStyle header2({Color? color}) => style(Weight.semiBold, 20, 26, color ?? defaultColor);

  @override
  TextStyle itemTitle({Color? color}) => style(Weight.semiBold, 16, 22, color ?? defaultColor);

  @override
  TextStyle itemDescription({Color? color}) => style(Weight.medium, 14, 20, color ?? defaultColor);

  @override
  TextStyle description({Color? color}) => style(Weight.semiBold, 16, 22, color ?? defaultColor);

  @override
  TextStyle readable({Color? color}) => style(Weight.semiBold, 14, 20, color ?? defaultColor);

  @override
  TextStyle token({Color? color}) => style(Weight.regular, 12, 18, color ?? defaultColor);

  @override
  TextStyle hint({Color? color}) => style(Weight.regular, 10, 16, color ?? defaultColor);

  @override
  TextStyle paragraph1({Color? color}) => style(Weight.regular, 16, 16 * 1.6, color ?? defaultColor);

  @override
  TextStyle paragraph2({Color? color}) => style(Weight.regular, 14, 14 * 1.6, color ?? defaultColor);

  @override
  TextStyle paragraph1Underlined({Color? color}) => style(Weight.regular, 16, 16 * 1.6, underlined: true, color ?? defaultColor);

  @override
  TextStyle paragraph2Underlined({Color? color}) => style(Weight.regular, 14, 14 * 1.6, underlined: true, color ?? defaultColor);
}

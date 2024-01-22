import 'package:flutter/material.dart';
import 'package:dimipay_design_kit/dimipay_design_kit.dart';

TextStyle _style(FontWeight weight, double size, double height, Color color,
        {bool underlined = false, double spacing = 0}) =>
    TextStyle(
      color: color,
      height: height / size,
      fontSize: size,
      fontFamily: 'SUIT',
      fontWeight: weight,
      letterSpacing: spacing,
      decoration: underlined ? TextDecoration.underline : TextDecoration.none,
      decorationColor: color,
    );

const _defaultColor = DPColors.grayscale700;
final _weight = _SUITv1();

class _SUITv1 {
  final thin = FontWeight.w100;
  final extraLight = FontWeight.w200;
  final light = FontWeight.w300;
  final regular = FontWeight.w400;
  final medium = FontWeight.w500;
  final semiBold = FontWeight.w600;
  final bold = FontWeight.w700;
  final extraBold = FontWeight.w800;
  final heavy = FontWeight.w900;
}

class _POS {
  TextStyle itemTitle({Color color = _defaultColor}) =>
      _style(_weight.semiBold, 24, 24, color);

  TextStyle itemDescription({Color color = _defaultColor}) =>
      _style(_weight.medium, 24, 24, color);

  TextStyle title({Color color = _defaultColor}) =>
      _style(_weight.semiBold, 36, 36, color, spacing: -0.72);

  TextStyle underlined({Color color = _defaultColor}) =>
      _style(_weight.regular, 24, 24, color, underlined: true);
}

abstract class DPTypography {
  static final weight = _weight;

  static TextStyle title({Color color = _defaultColor}) =>
      _style(_weight.semiBold, 28, 36, color);

  static TextStyle header1({Color color = _defaultColor}) =>
      _style(_weight.bold, 24, 32, color);

  static TextStyle header2({Color color = _defaultColor}) =>
      _style(_weight.semiBold, 20, 26, color);

  static TextStyle itemTitle({Color color = _defaultColor}) =>
      _style(_weight.semiBold, 16, 22, color);

  static TextStyle itemDescription({Color color = _defaultColor}) =>
      _style(_weight.medium, 14, 20, color);

  static TextStyle description({Color color = _defaultColor}) =>
      _style(_weight.semiBold, 16, 22, color);

  static TextStyle readable({Color color = _defaultColor}) =>
      _style(_weight.semiBold, 20, 20, color);

  static TextStyle token({Color color = _defaultColor}) =>
      _style(_weight.regular, 12, 18, color);

  static TextStyle hint({Color color = _defaultColor}) =>
      _style(_weight.regular, 10, 16, color);

  static TextStyle paragraph1({Color color = _defaultColor}) =>
      _style(_weight.regular, 16, 16 * 1.6, color);

  static TextStyle paragraph2({Color color = _defaultColor}) =>
      _style(_weight.regular, 14, 14 * 1.6, color);

  static TextStyle paragraph1Underlined({Color color = _defaultColor}) =>
      _style(_weight.regular, 16, 16 * 1.6, underlined: true, color);

  static TextStyle paragraph2Underlined({Color color = _defaultColor}) =>
      _style(_weight.regular, 14, 14 * 1.6, underlined: true, color);

  static final pos = _POS();
}

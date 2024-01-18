import 'package:dimipay_design_kit/dimipay_design_kit.dart';
import 'package:flutter/material.dart';

class DPIcons extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double? size;
  final double? weight;
  final double? opticalSize;
  final double? fill;
  const DPIcons(this.icon,
      {super.key,
      this.color = DPColors.grayscale500,
      this.size = 32,
      this.weight = 300,
      this.opticalSize = 24,
      this.fill = 1});

  @override
  Widget build(BuildContext context) {
    return Icon(icon,
        color: color,
        size: size,
        weight: weight,
        opticalSize: opticalSize,
        fill: fill);
  }
}

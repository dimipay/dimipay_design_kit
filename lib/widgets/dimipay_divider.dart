import 'package:dimipay_design_kit/interfaces/dimipay_colors.dart';
import 'package:flutter/material.dart';

class DPDivider extends StatelessWidget {
  const DPDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, height: 6, decoration: const BoxDecoration(color: IDPColors.grayscale200));
  }
}

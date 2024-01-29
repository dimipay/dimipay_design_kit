import 'package:dimipay_design_kit/dimipay_design_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DPAppbar extends StatelessWidget {
  final String? header;
  final String? paragraph;

  const DPAppbar({super.key, this.header, this.paragraph});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          DPButton(
              onTap: () => Get.back(),
              radius: BorderRadius.circular(20),
              isTapEffectEnabled: false,
              child: const DPIcons(Icons.arrow_back_ios_rounded, size: 20)),
          if (header != null)
            Column(children: [
              const SizedBox(height: 16),
              Text(header!,
                  style: DPTypography.header1(color: DPColors.grayscale1000))
            ]),
          if (paragraph != null)
            Column(children: [
              const SizedBox(height: 16),
              Text(paragraph!,
                  style: DPTypography.paragraph1(color: DPColors.grayscale700))
            ])
        ]));
  }
}

class DPPosbar extends StatelessWidget {
  final String header;
  final String? paragraph;

  const DPPosbar({super.key, required this.header, this.paragraph});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          DPButton(
              onTap: () {},
              radius: BorderRadius.circular(20),
              isTapEffectEnabled: false,
              child: const DPIcons(Icons.arrow_back_ios_rounded, size: 20)),
          const SizedBox(height: 16),
          Text(header,
              style: DPTypography.header1(color: DPColors.grayscale1000)),
          const SizedBox(height: 16),
          if (paragraph != null)
            Text(paragraph!,
                style: DPTypography.paragraph1(color: DPColors.grayscale700))
        ]));
  }
}

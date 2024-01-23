import 'package:flutter/material.dart';

class DPButton extends StatelessWidget {
  final VoidCallback onTap;
  final BorderRadius radius;
  final Decoration decoration;
  final Widget child;
  final bool isTapEffectEnabled;

  const DPButton({
    super.key,
    required this.onTap,
    this.radius = const BorderRadius.all(Radius.zero),
    this.decoration = const BoxDecoration(),
    required this.child,
    this.isTapEffectEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: isTapEffectEnabled
            ? InkWell(
                onTap: onTap,
                borderRadius: radius,
                child: Ink(decoration: decoration, child: child))
            : GestureDetector(
                onTap: onTap,
                child: Material(
                    color: Colors.transparent,
                    child: Container(decoration: decoration, child: child))));
  }
}

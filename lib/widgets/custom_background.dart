import 'package:beauty_app/constants.dart';
import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key, this.child, this.hPadding});
  final Widget? child;
  final double? hPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: hPadding ?? 0),
      decoration: const BoxDecoration(
        gradient: kLinearGradient,
      ),
      child: child,
    );
  }
}

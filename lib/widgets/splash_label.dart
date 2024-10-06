import 'package:beauty_app/constants.dart';
import 'package:beauty_app/utils/style.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class SplashLabel extends StatelessWidget {
  const SplashLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 12.0,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 14,
        ),
        decoration: _buildDecoration(),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Feel Young Again",
                  style: Style.oleoScriptBold15,
                ),
              ),
            ),
            SizedBox(width: 6),
            Icon(
              Icons.arrow_forward,
              color: kPrimary,
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: kTertiary,
      border: Border.all(
        color: kPrimary,
        width: 2,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
    );
  }
}

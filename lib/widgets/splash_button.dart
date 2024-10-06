import 'package:beauty_app/constants.dart';
import 'package:beauty_app/utils/style.dart';
import 'package:flutter/material.dart';

class SplashButton extends StatelessWidget {
  const SplashButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: _buildDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Let's Shop",
            style: Style.oleoScriptRegular24.copyWith(
              color: kTertiary,
            ),
          ),
          const SizedBox(width: 10),
          const Icon(
            Icons.arrow_forward,
            color: kTertiary,
          ),
        ],
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kPrimary,
        border: Border.all(
          color: kTertiary,
          width: 4,
          strokeAlign: BorderSide.strokeAlignInside,
        ),
        boxShadow: [
          _buildShadow(),
        ]);
  }

  BoxShadow _buildShadow() {
    return BoxShadow(
      offset: const Offset(0.5, 0.9),
      blurRadius: 10,
      spreadRadius: 0,
      color: const Color(0xffE9E3CB).withOpacity(.75),
    );
  }
}

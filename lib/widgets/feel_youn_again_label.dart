
import 'package:beauty_app/utils/assets.dart';
import 'package:beauty_app/widgets/splash_label.dart';
import 'package:flutter/material.dart';

class FeelYounAgainLabel extends StatelessWidget {
  const FeelYounAgainLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 3,
          child: Image.asset(
            Assets.imagesLeftArrow,
            fit: BoxFit.cover,
          ),
        ),
        const Expanded(
          flex: 5,
          child: SplashLabel(),
        ),
        Expanded(
          flex: 3,
          child: Transform.translate(
            offset: const Offset(0, 40),
            child: Image.asset(
              Assets.imagesRightArrow,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:beauty_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductViewAppBar extends StatelessWidget {
  const ProductViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: SvgPicture.asset(Assets.imagesReturnIcon),
        ),
        const Spacer(),
        SvgPicture.asset(Assets.imagesHeart),
      ],
    );
  }
}

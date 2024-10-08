import 'package:beauty_app/constants.dart';
import 'package:beauty_app/utils/assets.dart';
import 'package:beauty_app/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

class CustomProductSwipeButton extends StatelessWidget {
  const CustomProductSwipeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildDecoration(),
      child: SwipeButton(
        activeThumbColor: kPrimary,
        thumbPadding: const EdgeInsets.all(2),
        activeTrackColor: const Color(0xffD3D3BE),
        height: 60,
        borderRadius: BorderRadius.circular(18),
        thumb: Image.asset(
          Assets.imagesCartIcon,
          color: kTertiary,
        ),
        elevationThumb: 2,
        elevationTrack: 2,
        child: const Text(
          "SSwipe for Hassle-Free Shopping",
          style: Style.openSansSemiBold12,
        ),
        onSwipe: () {},
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 5),
          blurRadius: 5,
          spreadRadius: 0,
          color: const Color(0xff2D3B3E).withOpacity(.75),
        ),
      ],
    );
  }
}

import 'package:beauty_app/constants.dart';
import 'package:beauty_app/utils/assets.dart';
import 'package:beauty_app/utils/style.dart';
import 'package:beauty_app/widgets/feel_youn_again_label.dart';
import 'package:beauty_app/widgets/splash_button.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBackground(),
        Positioned(
          left: 0,
          top: 230,
          child: Image.asset(Assets.imagesLeftStar),
        ),
        Positioned(
          right: 25,
          top: 360,
          child: Image.asset(Assets.imagesRightStar),
        ),
        _setBackgroundImage(context),
        _buildSplashContent(),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(Assets.imagesSplashSmallArrow1),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(Assets.imagesSplashSmallArrow2),
        ),
        const FeelYounAgainLabel(),
      ],
    );
  }

  Padding _buildSplashContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 40,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildText(),
          const SizedBox(height: 28),
          InkWell(
            onTap: () {},
            child: const SplashButton(),
          ),
        ],
      ),
    );
  }

  Text _buildText() {
    return Text(
      "Get ready to glow up with our beauty secrets and make your skin never give up!",
      style: Style.openSansBold18.copyWith(
        color: const Color(0xffE8FFFF),
      ),
    );
  }

  Align _setBackgroundImage(BuildContext context) {
    return Align(
      child: Container(
        height: MediaQuery.sizeOf(context).height * .6,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Assets.imagesSplashBg2),
          ),
        ),
      ),
    );
  }

  Container _buildBackground() {
    return Container(
      decoration: const BoxDecoration(
        gradient: kLinearGradient,
      ),
    );
  }
}

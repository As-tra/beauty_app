import 'package:beauty_app/constants.dart';
import 'package:beauty_app/utils/assets.dart';
import 'package:beauty_app/utils/style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(Assets.imagesProfile),
          radius: 25,
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello Julia", style: Style.oleoScriptRegular24),
            Text("Welcome back", style: Style.oleoScriptRegular12),
          ],
        ),
        Spacer(),
        Icon(
          Icons.notification_add_outlined,
          size: 26,
          color: kPrimary,
        ),
      ],
    );
  }
}

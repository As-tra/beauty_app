import 'package:beauty_app/constants.dart';
import 'package:beauty_app/utils/style.dart';
import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({super.key, required this.rating});
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(
            5,
            (index) {
              return Icon(
                Icons.star,
                size: 12,
                color: index < rating.toInt() ? kPrimary : kTertiary,
              );
            },
          ),
        ),
        const SizedBox(width: 6),
        Text(
          "$rating",
          style: Style.openSansSemiBold10,
        )
      ],
    );
  }
}

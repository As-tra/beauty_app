import 'package:beauty_app/constants.dart';
import 'package:beauty_app/utils/style.dart';
import 'package:flutter/material.dart';

class ProductDescriptionCounter extends StatefulWidget {
  const ProductDescriptionCounter({super.key});

  @override
  State<ProductDescriptionCounter> createState() =>
      _ProductDescriptionCounterState();
}

class _ProductDescriptionCounterState extends State<ProductDescriptionCounter> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {
            if (count > 0) {
              count--;
              setState(() {});
            }
          },
          icon: const Icon(
            Icons.remove_circle_outline,
            color: kTertiary,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          "$count",
          style: Style.openSansBold15.copyWith(color: const Color(0xff005959)),
        ),
        const SizedBox(width: 4),
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {
            setState(() {
              count++;
            });
          },
          icon: const Icon(
            Icons.add_circle_outline,
            color: kPrimary,
          ),
        )
      ],
    );
  }
}

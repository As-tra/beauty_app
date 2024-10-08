import 'package:beauty_app/constants.dart';
import 'package:beauty_app/utils/assets.dart';
import 'package:beauty_app/utils/style.dart';
import 'package:flutter/material.dart';

class ProductListViewItem extends StatelessWidget {
  const ProductListViewItem({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: isActive ? kSecondary : kPrimary,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        children: [
          Image.asset(Assets.imagesP1),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Olay Regenerist Retinol',
                        style: Style.openSansSemiBold14.copyWith(
                          color: isActive ? kPrimary : kSecondary,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.add_circle,
                      color: isActive ? kPrimary : kSecondary,
                      size: 28,
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      '200ml',
                      style: Style.openSansRegular12.copyWith(
                        color: isActive ? kPrimary : kSecondary,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "20\$",
                      style: Style.openSansBold14.copyWith(
                        color: isActive ? kPrimary : kSecondary,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

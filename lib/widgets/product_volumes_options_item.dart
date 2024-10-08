import 'package:beauty_app/constants.dart';
import 'package:beauty_app/utils/style.dart';
import 'package:flutter/material.dart';

class ProductVolumesOptionsItem extends StatelessWidget {
  const ProductVolumesOptionsItem(
      {super.key, required this.isActive, required this.text});
  final bool isActive;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 12),
      duration: const Duration(milliseconds: 400),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isActive ? kPrimary : kSecondary,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 0,
            color: const Color(0xff2D3B3E).withOpacity(.75),
          )
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        style: Style.openSansSemiBold16.copyWith(
          color: isActive ? kSecondary : kPrimary,
        ),
      ),
    );
  }
}

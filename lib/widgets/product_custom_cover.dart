
import 'package:flutter/material.dart';

class ProductCustomCover extends StatelessWidget {
  const ProductCustomCover({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 18),
            blurRadius: 56,
            spreadRadius: 0,
            color: Color(0xff2D3B3E),
          ),
        ],
      ),
      child: Transform.translate(
        offset: const Offset(80, 0),
        child: Transform.scale(
          scale: 2.5,
          child: Image.asset(image),
        ),
      ),
    );
  }
}

import 'package:beauty_app/constants.dart';
import 'package:beauty_app/models/product_model.dart';
import 'package:beauty_app/utils/style.dart';
import 'package:flutter/material.dart';

class PopularProductItemDesc extends StatelessWidget {
  const PopularProductItemDesc({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: _buildDecoration(),
      child: Column(
        children: [
          Row(
            children: [
              Text(productModel.productName, style: Style.openSansSemiBold14),
              const Spacer(),
              Text("${productModel.price}\$", style: Style.openSansSemiBold16),
            ],
          ),
          Row(
            children: [
              Text(productModel.category, style: Style.openSansRegular12),
              const Spacer(),
              const Icon(
                Icons.add_circle_outline,
                color: kTertiary,
              )
            ],
          )
        ],
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return const BoxDecoration(
      color: kPrimary,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
    );
  }
}

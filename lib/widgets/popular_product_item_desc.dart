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
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                productModel.productName,
                style: Style.openSansSemiBold14.copyWith(
                  color: kTertiary,
                ),
              ),
              const Spacer(),
              Text(
                "${productModel.price}\$",
                style: Style.openSansSemiBold16.copyWith(
                  color: kTertiary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                productModel.category,
                style: Style.openSansRegular12.copyWith(
                  color: kTertiary,
                ),
              ),
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
    return BoxDecoration(
      color: kPrimary,
      borderRadius: BorderRadius.circular(12),
    );
  }
}

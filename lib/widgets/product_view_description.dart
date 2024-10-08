import 'package:beauty_app/models/product_model.dart';
import 'package:beauty_app/utils/style.dart';
import 'package:flutter/material.dart';

class ProductViewDescription extends StatelessWidget {
  const ProductViewDescription({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productModel.productName,
          style: Style.oleoScriptBold24,
        ),
        const SizedBox(height: 4),
        Text(
          productModel.mark,
          style: Style.openSansBold20,
        ),
        const SizedBox(height: 12),
        Text(
          productModel.description,
          style: Style.openSansSemiBold12.copyWith(
            color: const Color(0xff005959),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "${productModel.price}\$",
          style: Style.oleoScriptBold20,
        ),
      ],
    );
  }
}

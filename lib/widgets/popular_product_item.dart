import 'package:beauty_app/constants.dart';
import 'package:beauty_app/models/product_model.dart';
import 'package:beauty_app/widgets/popular_product_item_desc.dart';
import 'package:flutter/material.dart';

class PopularProductItem extends StatelessWidget {
  const PopularProductItem({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 180,
              decoration: _buildDecoration(),
            ),
          ),
          Positioned(
            top: -15,
            child: Image.asset(
              productModel.image,
              height: 180,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: PopularProductItemDesc(productModel: productModel),
          ),
        ],
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: kSecondary,
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, -1),
          blurRadius: 4,
          spreadRadius: 0,
          color: const Color(0xff686868).withOpacity(.25),
        ),
        BoxShadow(
          offset: const Offset(0, 4),
          blurRadius: 4,
          spreadRadius: 0,
          color: const Color(0xff686868).withOpacity(.25),
        ),
        BoxShadow(
          offset: const Offset(4, 4),
          blurRadius: 6,
          spreadRadius: 0,
          color: const Color(0xff686868).withOpacity(.25),
        ),
      ],
    );
  }
}

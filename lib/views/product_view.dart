import 'package:beauty_app/models/product_model.dart';
import 'package:beauty_app/widgets/product_view_body.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ProductViewBody(
        productModel: productModel,
      ),
    );
  }
}

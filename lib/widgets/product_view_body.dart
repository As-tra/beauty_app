import 'package:beauty_app/models/product_model.dart';
import 'package:beauty_app/widgets/custom_background.dart';
import 'package:beauty_app/widgets/product_custom_cover.dart';
import 'package:beauty_app/widgets/product_view_app_bar.dart';
import 'package:beauty_app/widgets/product_view_description.dart';
import 'package:flutter/material.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ProductViewAppBar(),
            ),
            const SizedBox(height: 130),
            // const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ProductViewDescription(
                    productModel: productModel,
                  ),
                ),
                Expanded(
                  child: ProductCustomCover(image: productModel.image),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

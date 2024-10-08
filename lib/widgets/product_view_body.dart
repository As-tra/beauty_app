import 'package:beauty_app/models/product_model.dart';
import 'package:beauty_app/widgets/custom_background.dart';
import 'package:beauty_app/widgets/custom_product_swipe_button.dart';
import 'package:beauty_app/widgets/product_custom_cover.dart';
import 'package:beauty_app/widgets/product_view_app_bar.dart';
import 'package:beauty_app/widgets/product_view_description.dart';
import 'package:beauty_app/widgets/product_volumes_options.dart';
import 'package:flutter/material.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      hPadding: 20,
      child: SafeArea(
        child: Column(
          children: [
            const ProductViewAppBar(),
            // const SizedBox(height: 120),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ProductViewDescription(
                    productModel: productModel,
                  ),
                ),
                Expanded(
                  child: Hero(
                    tag: productModel.productName,
                    child: ProductCustomCover(image: productModel.image),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const ProductVolumesOptions(),
            const SizedBox(height: 42),
            const CustomProductSwipeButton(),
          ],
        ),
      ),
    );
  }
}

import 'package:beauty_app/constants.dart';
import 'package:beauty_app/widgets/popular_product_item.dart';
import 'package:flutter/material.dart';

class PopularProductListView extends StatelessWidget {
  const PopularProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: kPopularProducts.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: PopularProductItem(productModel: kPopularProducts[index]),
        );
      },
    );
  }
}

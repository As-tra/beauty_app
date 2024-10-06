import 'package:beauty_app/constants.dart';
import 'package:beauty_app/widgets/popular_product_item.dart';
import 'package:flutter/material.dart';

class PopularProductListView extends StatelessWidget {
  const PopularProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return PopularProductItem(productModel: kProducts[0]);
      },
    );
  }
}

import 'package:beauty_app/constants.dart';
import 'package:beauty_app/utils/app_router.dart';
import 'package:beauty_app/widgets/popular_product_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          child: InkWell(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kProductView,
                    extra: kPopularProducts[index]);
              },
              child: PopularProductItem(productModel: kPopularProducts[index])),
        );
      },
    );
  }
}

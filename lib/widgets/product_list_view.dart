import 'package:beauty_app/widgets/product_list_view_item.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      sliver: SliverList.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ProductListViewItem(
              isActive: index % 2 == 0,
            ),
          );
        },
      ),
    );
  }
}

import 'package:beauty_app/utils/style.dart';
import 'package:beauty_app/widgets/custom_app_bar.dart';
import 'package:beauty_app/widgets/custom_background.dart';
import 'package:beauty_app/widgets/custom_search_bar.dart';
import 'package:beauty_app/widgets/popular_product_list_view.dart';
import 'package:beauty_app/widgets/product_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    CustomAppBar(),
                    SizedBox(height: 20),
                    CustomSearchBar(),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          "Popular Products",
                          style: Style.openSansBold18,
                        )
                      ],
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 240,
                      child: PopularProductListView(),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            ProductListView(),
          ],
        ),
      ),
    );
  }
}

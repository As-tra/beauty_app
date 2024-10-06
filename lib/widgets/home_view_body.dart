import 'package:beauty_app/widgets/custom_app_bar.dart';
import 'package:beauty_app/widgets/custom_background.dart';
import 'package:beauty_app/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      hPadding: 20,
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomAppBar(),
            SizedBox(height: 20),
            CustomSearchBar(),
            // SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

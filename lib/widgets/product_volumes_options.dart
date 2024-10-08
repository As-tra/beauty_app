import 'package:beauty_app/widgets/product_volumes_options_item.dart';
import 'package:flutter/material.dart';

class ProductVolumesOptions extends StatefulWidget {
  const ProductVolumesOptions({super.key});

  static List<String> volumes = ["100ml", "250ml", "500ml", "1000ml"];

  @override
  State<ProductVolumesOptions> createState() => _ProductVolumesOptionsState();
}

class _ProductVolumesOptionsState extends State<ProductVolumesOptions> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: ProductVolumesOptions.volumes.asMap().entries.map(
        (e) {
          return InkWell(
            onTap: () {
              activeIndex = e.key;
              setState(() {});
            },
            child: ProductVolumesOptionsItem(
              isActive: activeIndex == e.key,
              text: e.value,
            ),
          );
        },
      ).toList(),
    );
  }
}

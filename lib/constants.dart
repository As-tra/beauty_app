import 'package:beauty_app/models/product_model.dart';
import 'package:beauty_app/utils/assets.dart';
import 'package:flutter/material.dart';

const kPrimary = Color(0xff5A7C76);
const kSecondary = Color(0xffE9E3CB);
const kTertiary = Color(0xffE8FFFF);

const kLinearGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [kSecondary, kPrimary],
);

const kOleoScript = "OleoScript";
const kOpenSans = "OpenSans";

List<ProductModel> kProducts = [
  ProductModel(
    productName: "Aroma Cream",
    mark: "Aveeno",
    category: "Skincare",
    price: 5,
    rate: 4,
    image: Assets.imagesProduct1,
  ),
];

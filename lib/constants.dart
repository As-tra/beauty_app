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

List<ProductModel> kPopularProducts = [
  ProductModel(
    productName: "Aroma Cream",
    mark: "Aveeno",
    category: "Skincare",
    price: 85,
    rate: 4,
    image: Assets.imagesProduct1,
    description:
        "Aroma cream by Aveeno is a nourishing blend of colloidal oatmeal and rich emollients, designed to deeply hydrate and soothe dry, sensitive skin.",
  ),
  ProductModel(
    productName: "Luminous Oil",
    mark: "L'Oreal",
    category: "Hair care",
    price: 65,
    rate: 4.5,
    image: Assets.imagesProduct2,
    description:
        "Luminous Oil by L'Oreal is a lightweight hair oil infused with nourishing ingredients, designed to add shine and smoothness to all hair types, leaving it soft and frizz-free.",
  ),
  ProductModel(
    productName: "Purely Purify",
    mark: "Neutrogena",
    category: "Face care",
    price: 70,
    rate: 4.7,
    image: Assets.imagesProduct3,
    description:
        "Purely Purify by Neutrogena is a gentle face cleanser formulated with natural ingredients that help remove impurities and excess oil, leaving the skin refreshed and clean without drying it out.",
  )
];

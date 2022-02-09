import 'package:deneme_ice_cream/constants.dart';
import 'package:flutter/material.dart';

class Product {
  final String image, title, desc;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.desc,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_items = [
  Product(
    image: "assets/images/product_2.png",
    title: "Sherbet flavors",
    desc:"With strawberry jam",
    price: 14,
    bgColor: lightPink,
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Sherbet flavors",
    desc:"With strawberry jam",
    price: 14,
    bgColor: blue,
  ),
];

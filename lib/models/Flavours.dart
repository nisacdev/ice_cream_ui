import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    required this.bgColor,
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/product_0.png",
    title: "Vanilla Ice Cream",
    price: 14,
    bgColor: const Color.fromRGBO(253, 160, 182, 1),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Rasberry Ice Cream",
    price: 14,
    bgColor: const Color.fromRGBO(253, 160, 182, 1),
  ),
];

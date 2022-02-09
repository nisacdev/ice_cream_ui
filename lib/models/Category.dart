import 'package:flutter/material.dart';
import '/constants.dart';

class Category {
  final String image, title;
  final Color bgColor;

  Category({required this.image, required this.title, this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Category> demo_categories = [
  Category(
    image: "assets/images/product_5.png",
    title: "Vanilla",
    bgColor:lightPink,
  ),
  Category(
    image: "assets/images/product_4.png",
    title: "Neopolitan",
    bgColor:yellow,
  ),
  Category(
    image: "",
    title: "Coconut",
    bgColor:purple,
  ),
];

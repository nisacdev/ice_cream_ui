import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Items.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.image,
    required this.title,
    required this.desc,
    required this.price,
    required this.press,
    required this.bgColor,
  }) : super(key: key);
  final String image, title, desc;
  final VoidCallback press;
  final int price;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 170,
        height: 230,
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(defaultBorderRadius)),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Image.asset(
                      image,
                      height: 50,
                    )),
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    Text(desc,),
                    const SizedBox(width: defaultPadding / 4),
                    Text(
                      "\$" + price.toString(),
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

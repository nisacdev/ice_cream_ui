import 'package:flutter/material.dart';
import '../../../models/Flavours.dart';

import '../../../constants.dart';
import '../../../models/Items.dart';
import 'item_card.dart';



class TopItem extends StatelessWidget {
  const TopItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Top Item",
        style: TextStyle(
          color: Colors.grey.shade800,
          fontWeight: FontWeight.bold,
          fontFamily: 'NotoSansKR',
          ),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_items.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ItemCard(
                  title: demo_items[index].title,
                  image: demo_items[index].image,
                  desc: demo_items[index].desc,
                  price: demo_items[index].price,
                  bgColor: demo_items[index].bgColor,
                  press: () {},
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

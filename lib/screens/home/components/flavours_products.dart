import 'package:flutter/material.dart';
import '../../../models/Flavours.dart';
import '/screens/details/details_screen.dart';

import '../../../constants.dart';
import 'flavours_card.dart';


class TopFlavours extends StatelessWidget {
  const TopFlavours({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Top Flavours",
          style: TextStyle(
          color: Colors.grey.shade800,
          fontWeight: FontWeight.bold,
          fontFamily: 'NotoSansKR',
          ),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: FlavoursCard(
                  title: demo_product[index].title,
                  image: demo_product[index].image,
                  price: demo_product[index].price,
                  bgColor: demo_product[index].bgColor,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(product: demo_product[index]),
                        ));
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

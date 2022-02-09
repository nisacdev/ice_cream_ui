import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/models/Category.dart';

import '../../../constants.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text("Popular Ice Cream", style: TextStyle(
          color: Colors.grey.shade800,
          fontWeight: FontWeight.bold,
          fontFamily: 'NotoSansKR',
          ),
        ),
        SizedBox(
          height: 42,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: demo_categories.length,
            itemBuilder: (context, index) => CategoryCard(
              icon: demo_categories[index].image,
              title: demo_categories[index].title,
              bgColor: demo_categories[index].bgColor,
              press: () {},
            ),
            separatorBuilder: (context, index) =>
                const SizedBox(width: defaultPadding),
          ),
        ),

      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
    required this.bgColor,
  }) : super(key: key);

  final String icon, title;
  final Color bgColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 8, horizontal: 11),
          child: Column(

            children: [
              SvgPicture.asset(icon),
              const SizedBox(height: defaultPadding / 2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

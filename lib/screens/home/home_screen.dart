import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/constants.dart';

import 'components/category_card.dart';
import 'components/flavours_products.dart';
import 'components/item_products.dart';
import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Emma",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontFamily:'NotoSansKR',fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "What flavor do you like to eat?",
              style: TextStyle(fontSize: 18,fontFamily: 'NotoSansKR'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const TopFlavours(),
            SizedBox(height: 10,),
            const Categories(),
            SizedBox(height: 10,),
            const TopItem(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/components/recommend.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Column(
      children: [
        const HomeHeader(),
          const SizedBox(height: 10),
              Container(
                //width:410,
                height:120,
                width: double.infinity,
                decoration: const BoxDecoration(color: light),
                child: Image.asset(
                  "assets/images/foodie.png",
                  fit: BoxFit.cover,
                ),
              ),
        const SizedBox(height: 10),
         const DiscountBanner(),
          Categories(),
Recommend()
      ],),
    );
  }
}

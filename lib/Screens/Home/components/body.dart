import 'package:flutter/material.dart';

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
         const DiscountBanner(),
          Categories(),

      ],),
    );
  }
}

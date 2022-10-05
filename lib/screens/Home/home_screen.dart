import 'package:flutter/material.dart';

import '../../components/coustom_bottom_nav_bar.dart';
import'../Home/components/body.dart';
import '../../enums.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

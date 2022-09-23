import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'Screens/Home/home_screen.dart';
class Routes{
  static const homeScreen = '/HomeScreen';
}
class AppPages{
  static final pages = [
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
    ),
  ];
}
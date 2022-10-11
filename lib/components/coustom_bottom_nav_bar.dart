import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/order/components/order_confirm/order_confirm_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Screens/Home/home_screen.dart';

import '../Screens/profile/profile_screen.dart';
import '../constants.dart';
import '../enums.dart';
import '../screens/PaySuccess/pay_success_screen.dart';
import '../screens/myOrder/index.dart';
import '../screens/order/components/order_detail/order_detail.dart';
import '../screens/order/components/order_remark/order_remark.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key ?key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/home.svg",
                  color: MenuState.home == selectedMenu
                      ? HPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Get.to(const HomeScreen())
              ),
              IconButton(
                icon: SvgPicture.asset("assets/icons/order.svg",
                  color: MenuState.order == selectedMenu
                  ? HPrimaryColor
                  : inActiveIconColor,
                ),
                 onPressed: () => Get.to( Order())
                 // onPressed: () => Get.to(OrderConfirm())
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/person.svg",
                  color: MenuState.profile == selectedMenu
                      ? HPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Get.to(const ProfileScreen())
              ),
            ],
          )),
    );
  }
}

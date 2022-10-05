import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "我的账户",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "通知消息",
            icon: "assets/icons/notification.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "设置中心",
            icon: "assets/icons/setting.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "帮助中心",
            icon: "assets/icons/helper.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "退出登陆",
            icon: "assets/icons/logout.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

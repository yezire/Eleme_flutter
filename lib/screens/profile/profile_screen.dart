import 'package:flutter/material.dart';

import '../../components/coustom_bottom_nav_bar.dart';
import '../../constants.dart';
import '../../enums.dart';
import '../profile/components/body.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("个人主页"),
        backgroundColor: HPrimaryColor,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
